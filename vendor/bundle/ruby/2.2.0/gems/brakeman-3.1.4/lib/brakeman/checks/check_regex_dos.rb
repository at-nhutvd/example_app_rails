require 'brakeman/checks/base_check'

#This check looks for regexes that include user input.
class Brakeman::CheckRegexDoS < Brakeman::BaseCheck
  Brakeman::Checks.add self

  ESCAPES = {
    s(:const, :Regexp) => [
      :escape,
      :quote
    ]
  }

  @description = "Searches regexes including user input"

  #Process calls
  def run_check
    Brakeman.debug "Finding dynamic regexes"
    calls = tracker.find_call :method => [:brakeman_regex_interp]

    Brakeman.debug "Processing dynamic regexes"
    calls.each do |call|
      process_result call
    end
  end

  #Warns if regex includes user input
  def process_result result
    return if duplicate? result or result[:call].original_line
    add_result result

    call = result[:call]
    components = call[1..-1]

    components.any? do |component|
      next unless sexp? component

      if match = has_immediate_user_input?(component)
        confidence = CONFIDENCE[:high]
      elsif match = has_immediate_model?(component)
        match = Match.new(:model, match)
        confidence = CONFIDENCE[:med]
      elsif match = include_user_input?(component)
        confidence = CONFIDENCE[:low]
      end

      if match
        message = "#{friendly_type_of(match).capitalize} used in regex"

        warn :result => result,
          :warning_type => "Denial of Service",
          :warning_code => :regex_dos,
          :message => message,
          :confidence => confidence,
          :user_input => match
      end
    end
  end

  def process_call(exp)
    if escape_methods = ESCAPES[exp.target]
      if escape_methods.include? exp.method
        return exp
      end
    end

    super
  end
end

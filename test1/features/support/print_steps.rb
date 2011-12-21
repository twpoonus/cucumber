require "cucumber"

class PrintSteps < Cucumber::Ast::Visitor

  def initialize(step_mother, io, options)
    super(step_mother)
  end

  def visit_feature(feature)
    puts feature.name
    super
  end

  def visit_feature_element(feature_element)
    puts "\\\\t#{feature_element.name}"
    super
  end

  def visit_step_result(keyword, step_match, multiline_arg, status, exception, source_indent, background)
    puts "\\\\t\\\\t#{step_match.name}" if status == :undefined
  end
end
require './http_base.rb'

class QuestionService < HttpBase

  def fetch!
    run(method: "#{@config['questions']['method']}", url: "#{@config['questions']['url']}")
  end

end
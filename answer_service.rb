require './http_base.rb'

class AnswerService < HttpBase

  def fire!(data)
    run(method: "#{@config['answers']['method']}", url: "#{@config['answers']['url']}", data: data)
  end

end
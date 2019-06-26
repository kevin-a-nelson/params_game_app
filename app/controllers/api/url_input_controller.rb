class Api::UrlInputController < ApplicationController
  def url_input
    name = params['name']
    @message = ''
    if name[0] == 'a' || name[0] == 'A'
      @message = 'hey your name starts with the first letter of the alphabet'
    end
    render 'url_input.json.jb'
  end
end

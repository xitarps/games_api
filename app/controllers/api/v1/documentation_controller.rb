class Api::V1::DocumentationController < Api::V1::ApiController
  def index
    render json: { message: 'Essa é uma api para jogos' }
  end
end

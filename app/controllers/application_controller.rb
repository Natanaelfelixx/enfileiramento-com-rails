class ApplicationController < ActionController::API
  def teste
    # byebug
    TestinhoJob.perform_later
  end

  def teste_job
    email = params[:email]
    name = params[:name]

    TesteJob.perform_later(email, name)
    
    render json: { status: 'Job enfileirado' }, status: :ok
  end
end

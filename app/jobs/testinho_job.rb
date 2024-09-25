class TestinhoJob < ApplicationJob
  queue_as :default


  def perform(*args)
    # byebug
    path = Rails.root.join('tmp', 'teste.txt')
    File.open(path, 'w') do |file|
      file.write("Este é um arquivo temporário chamado teste.")
    end

    Rails.logger.info "Arquivo temporário criado: #{path}"
  end

end

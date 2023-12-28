class Api::V1::Importer::BooksController < ActionController::API
  def create
    book_titles = params[:book_titles]

    if book_titles.is_a?(Array)
      book_titles.each do |title|
        Book.create(title: title)
      end
      head :created
    else
      render json: { error: 'Invalid input' }, status: :unprocessable_entity
    end
  end
end

# frozen_string_literal: true

class BookReflex < ApplicationReflex
  def read
    book = Book.where(title: element.dataset.title, finished: false).first
    book.update(finished: true) unless book.nil?
  end
end

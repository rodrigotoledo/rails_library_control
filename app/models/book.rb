class Book < ApplicationRecord
  after_save :broadcast_updates
  after_destroy :broadcast_updates

  def self.total_unread
    where(finished: false).count
  end

  def self.total_read
    where(finished: true).count
  end

  def self.top_read_books
    sql = <<~SQL
      SELECT title, COUNT(*) as count
      FROM books
      WHERE finished = true
      GROUP BY title
      ORDER BY count DESC
      LIMIT 5
    SQL

    result = ActiveRecord::Base.connection.exec_query(sql)

    result.to_a
  end

  private

  def broadcast_updates
    broadcast_update_to(
      'total_read',
      target: "total_read",
      partial: 'home/total_read'
    )

    broadcast_update_to(
      'total_unread',
      target: "total_unread",
      partial: 'home/total_unread'
    )

    broadcast_update_to(
      'top_read_books',
      target: "top_read_books",
      partial: 'home/top_read_books'
    )
  end
end
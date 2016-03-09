class Video < ActiveRecord::Base

  def next
    #Video.find(id + 1)
    Video.where(" id > ?", id).first#次ページ
  end
  def prev
    #Video.find(id - 1)
    Video.where("id < ?", id).last#前のページ
  end
end

class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true}
  
  #postsテーブルのUser_idから,userテーブルの情報を探すメソッド
  def user
    return User.find_by(id: self.user_id)
  end
end

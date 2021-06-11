class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,:registerable,
        :recoverable, :rememberable, :validatable,:confirmable
        
        
  validates :name, presence: true #追記
  validates :email, length: { maximum: 200 } #追記
  
  
  # def self.search(search) #self.でクラスメソッドとしている
  #   if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
  #     User.where(['word LIKE ?', "%#{search}%"])
  #   else
  #     User.all #全て表示。
  #   end
  # end
end
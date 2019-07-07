class User < ApplicationRecord

	#password, password_confirmationをUserモデルのプロパティとして使用する
	#trueを渡すことでpasswordの必須入力とpasswordとpassword_confirmationの内容の合致バリデーションがUserモデルに追加される
	has_secure_password validations: true
	validates :mail, presence: true, uniqueness: true
end

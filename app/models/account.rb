class Account < ActiveRecord::Base
  has_many :transactions, class_name: "Transaction", dependent: :destroy

  before_save :initvalue

  private

  def initvalue
  	self.init_value ||= 0
  end
end

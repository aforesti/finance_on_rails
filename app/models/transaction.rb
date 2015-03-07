class Transaction < ActiveRecord::Base
  belongs_to :account

  scope :last_month, -> { Transaction.where('date > ?', 30.days.ago.to_date)}

  after_save :update_account

  private

  def update_account
  	
  	Rails.logger.info "Update Account #{self.value}"
  	Rails.logger.info "Update Account #{self.account.init_value}"
  	self.account.init_value -= self.value 
  	self.account.save!
  end
end

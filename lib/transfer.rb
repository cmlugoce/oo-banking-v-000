class Transfer
  
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
    
  end
  
   def valid?
     @sender.valid? && @receiver.valid? && self.amount > 0 
    end 
    
    def execute_transaction
      if self.valid? && @status == "pending"
        @sender.balance -= @amount 
        @receiver.balance += @amount 
        @status = "complete"
      else 
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
      end 
    end 
        
end

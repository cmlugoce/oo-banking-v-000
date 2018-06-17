class Transfer
  
  attr_accessor 
  
  def initialize(sender, receiver, status)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    
  end
end

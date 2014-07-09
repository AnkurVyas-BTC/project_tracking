class Project < ActiveRecord::Base
  belongs_to :client
  default_scope -> { order('deadline_date DESC')}
	validates :name, presence: true, length: { maximum: 50 }
	validates :description, presence: true
	validates :billing_type, presence: true
  validates :budget_amount,numericality: { only_integer: true, greater_than: 0},
              if: :check_billing_type?


                
def check_billing_type?
  billing_type=="fixed"    
end


def self.search(search,status,client)
  if (search || status || client)
   
    find(:all, :conditions => ['name = ? AND status = ? AND client_id = ?',search,status,client])
  else
    find(:all)
  end
end


end

class Contact
  include ActiveModel::Validations
  
  validates_presence_of :name, :subject, :body
  
  validates :email,
            :presence => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  
  validates :verify,
            :presence => true,
            :numericality => { :equal_to => 4 }
  
  attr_accessor :id, :name, :email, :subject, :body, :verify, :attributes
  
  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
    @attributes = attributes
  end
  
  def read_attribute_for_validation(key)
    @attributes[key]
  end
  
  def to_key; end
  
  def save
    if self.valid?
      ContactMailer.contact(
        self.attributes.except :id
      ).deliver
      return true
    end
    false
  end
end
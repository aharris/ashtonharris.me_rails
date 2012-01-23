class ContactController < ApplicationController
  def new
    @contact = Contact.new(:id => 1)
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      redirect_to "/", :notice => "Thanks! We'll be in touch."
    else
      render 'new'
    end
  end
end
class ContactsController < ApplicationController
  respond_to :html
  
  def new
    @contact = Contact.new 
  end
  
  def create 
   @contact = Contact.create(params[:contact])
   redirect_to new_contact_path
  end
end

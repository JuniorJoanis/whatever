class ContactsController < ApplicationController
  respond_to :html
  
  def index
    @contacts = Contact.all
  end
  
  def new
    @contact = Contact.new 
  end
  
  def create 
   @contact = Contact.create(params[:contact])
   redirect_to contacts_path
  end
end

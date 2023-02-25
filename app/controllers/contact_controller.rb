class ContactController < ApplicationController

  def index
    # @contacts = Contact.all.map{|contact| { 'name': contact.name, 'number': contact.contact_number }}
  end

  def get_contact
    number = params[:number]
    contact_details = Contact.find_by(contact_number: number)
    render json: contact_details
  end

end

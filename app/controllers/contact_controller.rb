class ContactController < ApplicationController

  def index
    @contacts = Contact.all.map{|contact| { 'name': contact.name, 'number': contact.contact_number }}
  end

end

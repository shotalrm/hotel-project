class ContactsController < ApplicationController
    def index
        @contacts = Contact.all
        redirect_to new_contact_path
    end

    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to contact_path(@contact)
        end
    end

    def show
        @contact = Contact.find(params[:id])
    end

    def contact_params
        params.require(:contact).permit(:name, :email, :body)
    end
end

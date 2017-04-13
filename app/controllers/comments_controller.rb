class CommentsController < ApplicationController
    
    def create
        params.permit!
        @contact = Contact.find(params[:contact_id])
        @comment = @contact.comments.create(params[:comment])
        redirect_to contact_path(@contact)
    end
end

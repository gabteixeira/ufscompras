class CommentsController < ApplicationController
    before_action :find_post, :authenticate_user!
    before_action :find_comment, only: [:destroy, :edit, :update]

    def create
        @comment = @post.comments.create(params[:comment].permit(:content))
        @comment.user_id = current_user.id
        @comment.save

        if @comment.save
            redirect_to post_path(@post)
        else
            render 'new'
        end
    end

    def destroy
        @comment.destroy
        redirect_to post_path(@post)
    end

    def edit
        
    end

    def update
        if @comment.update(params[:comment].permit(:content))
            redirect_to post_path(@post)
        else
            render 'edit'
        end
    end

    private
        def find_post
            @post = Post.find(params[:post_id])  
        end

        def find_comment
            @comment = @post.comments.find(params[:id])
        end
end

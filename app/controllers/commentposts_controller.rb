class CommentpostsController < ApplicationController

	before_action :load_micropost, only: :show

	def create
	    @micropost = Micropost.find_by id: params[:id]
	    @commentpost = @micropost.commentposts.build(commentpost_params)
	    @commentpost.user_id = current_user.id
	    if @commentpost.save
	      redirect_to @micropost
	    else
	      flash.now[:danger] = "Error"
	    end
  	end

  private

    def commentpost_params
      params.require(:commentpost).permit(:content, :user_id, :micropost_id)
    end

    def load_micropost
    	@micropost = Micropost.find_by id: params[:id]
    end
end

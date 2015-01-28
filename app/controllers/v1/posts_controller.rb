module V1
  class PostsController < ApplicationController

    def index
      posts = [ {id: 1, title: 'The RSpec Book'} ]

      respond_to do |format|
        format.json do
          render json: posts
        end
      end
    end

  end
end
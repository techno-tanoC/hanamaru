class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.all

    render json: @tags
  end
end

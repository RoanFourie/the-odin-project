class TagsController < ApplicationController
    include TagsHelper
    def index
        @tags = Tag.all
    end

    def show
        @tag = Tag.find(params[:id])
    end

    def new
        @tag = Tag.new
    end

    def create
        @tag = Tag.new(tag_params)
        @tag.save
        flash.notice = "Tag '#{@tag.name}' Created!"
        redirect_to action: "index"
    end

    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
        flash.notice = "Tag '#{@tag.name}' Deleted!"
        redirect_to action: "index"
    end
end

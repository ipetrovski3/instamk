class SearchController < ApplicationController
  def index
    if params[:query].start_with?('#')
      query = params[:query].gsub('#', '')
      @photos = Photo.joins(:hash_tags).where(hash_tags: { name: query })
    else
      @photos = Photo.where('description like ?', "%#{params[:query]}%")
    end
  end
end

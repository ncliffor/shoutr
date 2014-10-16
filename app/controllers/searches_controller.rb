class SearchesController < ApplicationController
  def show
    query = params[:query]
    searched_user = User.where("email ILIKE ?", "%#{query}%")
    text_subjects = TextSubject.where("body ILIKE ?", "%#{query}%")
    text_shouts = text_subjects.map { |subject| subject.shout }

    image_subjects = ImageSubject.where("url ILIKE ?", "%#{query}%")
    image_shouts = image_subjects.map { |subject| subject.shout }

    shouts = text_shouts + image_shouts

    @search_results = searched_user + shouts
  end
end

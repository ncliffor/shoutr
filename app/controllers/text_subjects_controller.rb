class TextSubjectsController < ApplicationController
  def create
    text_subject = TextSubject.new(text_subject_params)
    if text_subject.save
    current_user.shouts.create(subject: text_subject)
    end

    redirect_to shouts_path
  end

  private

  def text_subject_params
    params.require(:text_subject).permit(:body)
  end
end

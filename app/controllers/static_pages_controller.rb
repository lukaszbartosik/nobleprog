# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def privacy
    case params[:lang]
    when 'pl'
      render 'privacy_pl'
    when 'es'
      render 'privacy_es'
    else
      @privacy_tekst = Faker::Lorem.paragraphs(number: 6)
      #            render "privacy"
    end
  end

  def current_time; end

  private

  helper_method :daytime?

  def daytime?
    hour = Time.zone.now.hour

    (hour > 6 && hour < 17)
  end
end

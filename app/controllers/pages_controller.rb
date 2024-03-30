class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def about
  end

  def contact
    @members = ["celine", "michael", "joshua", "elisa", "naomi"]
  end
end

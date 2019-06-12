  class Admin::PreferencesController < ApplicationController
    def index
      # binding.pry
      @preferences = Preference.first
      render 'preferences/index'
    end

    def edit
      @preferences = Preference.first
      render 'preferences/edit'
    end

    def update
      # binding.pry
      @preferences = Preference.first
      @preferences.update(song_sort_order: params[:song_sort_order], artist_sort_order: params[:artist_sort_order])
      redirect_to admin_preferences_path(@preferences)
    end
  end

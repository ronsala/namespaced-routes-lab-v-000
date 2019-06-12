  class Admin::PreferencesController < ApplicationController
    def index
      @preferences = Preference.first
      render 'preferences/index'
    end

    def edit
      @preferences = Preference.first
      render 'preferences/edit'
    end

    def update
      @preferences = Preference.first
      @preferences.update(song_sort_order: params[:song_sort_order], artist_sort_order: params[:artist_sort_order], allow_create_songs: params[:allow_create_songs], allow_create_artists: params[:allow_create_artists])
      redirect_to admin_preferences_path(@preferences)
    end
  end

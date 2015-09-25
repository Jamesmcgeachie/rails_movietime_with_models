class AddTimeWatchedToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :time_watched, :datetime
  end
end

class RemoveProjectIdFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column(:reviews, :project_id)
  end
end

class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :edit_link
      t.string :survey_link

      t.timestamps
    end
  end
end

class CreateHelpfullinks < ActiveRecord::Migration
  def change
    create_table :helpfullinks do |t|
      t.string :url
      t.string :title
      t.text :description
      t.timestamp :date_submitted

      t.timestamps
    end
  end
end

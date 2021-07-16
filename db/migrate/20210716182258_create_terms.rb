class CreateTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :terms do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end

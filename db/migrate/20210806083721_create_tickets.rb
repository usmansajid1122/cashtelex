class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :email
      t.text :message
      t.string :status
      t.timestamps
    end
  end
end

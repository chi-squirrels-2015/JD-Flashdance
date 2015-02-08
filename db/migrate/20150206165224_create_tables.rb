class CreateTables < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string  :category
    end

    create_table :cards do |t|
      t.string  :question
      t.string  :answer
      t.integer :deck_id
    end

    create_table :answers do |t|
      t.integer  :card_id
      t.integer  :user_id
      t.boolean  :correct?
    end

    create_table :users do |t|
      t.string  :name
    end
  end
end

class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.string :name

      t.timestamps
    end
    create_table :candidates do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :photo_url
      t.text :bio
      t.string :email
      t.string :website
      t.string :facebook
      t.string :instagram
      t.references :office, index: true

      t.timestamps
    end
    create_table :media do |t|
      t.string :headline
      t.string :url
      t.references :candidate, index: true

      t.timestamps
    end
  end
end

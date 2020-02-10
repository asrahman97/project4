class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user
      t.string :password_digest
      t.string :image_url, default: "https://3p5jd1qf3lk1yfzr02w96yn1-wpengine.netdna-ssl.com/wp-content/uploads/2016/09/default-user-img.jpg"
      t.timestamps
    end
  end
end

class CreateNoticeRequirements < ActiveRecord::Migration[6.0]
  def change
    create_table :notice_requirements do |t|
      t.string :topic
      t.string :requirement
      t.string :act_cites
      t.string :regulation_cites

      t.timestamps
    end
  end
end

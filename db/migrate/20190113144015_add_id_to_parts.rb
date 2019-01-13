class AddIdToParts < ActiveRecord::Migration[5.2]
  def change
    execute "UPDATE parts p SET site_id = (SELECT s.id FROM sites s WHERE s.reference_site = p.reference_site);"
  end
end

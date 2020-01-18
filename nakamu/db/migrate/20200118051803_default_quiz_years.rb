class DefaultQuizYears < ActiveRecord::Migration[5.2]
  def change
    remove_column :quiz_years, :y2019_10, :integer
    remove_column :quiz_years, :y2019_20, :integer
    remove_column :quiz_years, :y2019_30, :integer
    remove_column :quiz_years, :y2019_40, :integer
    remove_column :quiz_years, :y2019_50, :integer
    add_column :quiz_years, :miss2019, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_years, :miss2018, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_years, :miss2017, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_years, :miss2016, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_years, :miss2015, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_years, :miss2014, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_years, :miss2013, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_years, :miss2012, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_years, :miss2011, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_years, :miss2010, :string, default:"11111111111111111111111111111111111111111111111111"
  end

end

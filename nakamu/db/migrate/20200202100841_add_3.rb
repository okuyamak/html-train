class Add3 < ActiveRecord::Migration[5.2]
  def change
    add_column :quiz_types, :miss2019, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_types, :miss2018, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_types, :miss2017, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_types, :miss2016, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_types, :miss2015, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_types, :miss2014, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_types, :miss2013, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_types, :miss2012, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_types, :miss2011, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :quiz_types, :miss2010, :string, default:"11111111111111111111111111111111111111111111111111"
    add_column :score_type10s,  :t1_2010, :integer, default: 0
    add_column :score_type10s,  :t2_2010, :integer, default: 0
    add_column :score_type10s,  :t3_2010, :integer, default: 0
    add_column :score_type10s,  :t4_2010, :integer, default: 0
    add_column :score_type10s,  :t5_2010, :integer, default: 0
    add_column :score_type10s,  :t6_2010, :integer, default: 0
    add_column :score_type10s,  :t7_2010, :integer, default: 0
    add_column :score_type10s,  :t8_2010, :integer, default: 0
    add_column :score_type10s,  :t9_2010, :integer, default: 0
    add_column :score_type10s, :t10_2010, :integer, default: 0
    add_column :score_type10s, :t11_2010, :integer, default: 0
    add_column :score_type10s,  :t1_2011, :integer, default: 0
    add_column :score_type10s,  :t2_2011, :integer, default: 0
    add_column :score_type10s,  :t3_2011, :integer, default: 0
    add_column :score_type10s,  :t4_2011, :integer, default: 0
    add_column :score_type10s,  :t5_2011, :integer, default: 0
    add_column :score_type10s,  :t6_2011, :integer, default: 0
    add_column :score_type10s,  :t7_2011, :integer, default: 0
    add_column :score_type10s,  :t8_2011, :integer, default: 0
    add_column :score_type10s,  :t9_2011, :integer, default: 0
    add_column :score_type10s, :t10_2011, :integer, default: 0
    add_column :score_type10s, :t11_2011, :integer, default: 0
    add_column :score_type10s,  :t1_2012, :integer, default: 0
    add_column :score_type10s,  :t2_2012, :integer, default: 0
    add_column :score_type10s,  :t3_2012, :integer, default: 0
    add_column :score_type10s,  :t4_2012, :integer, default: 0
    add_column :score_type10s,  :t5_2012, :integer, default: 0
    add_column :score_type10s,  :t6_2012, :integer, default: 0
    add_column :score_type10s,  :t7_2012, :integer, default: 0
    add_column :score_type10s,  :t8_2012, :integer, default: 0
    add_column :score_type10s,  :t9_2012, :integer, default: 0
    add_column :score_type10s, :t10_2012, :integer, default: 0
    add_column :score_type10s, :t11_2012, :integer, default: 0
    add_column :score_type10s,  :t1_2013, :integer, default: 0
    add_column :score_type10s,  :t2_2013, :integer, default: 0
    add_column :score_type10s,  :t3_2013, :integer, default: 0
    add_column :score_type10s,  :t4_2013, :integer, default: 0
    add_column :score_type10s,  :t5_2013, :integer, default: 0
    add_column :score_type10s,  :t6_2013, :integer, default: 0
    add_column :score_type10s,  :t7_2013, :integer, default: 0
    add_column :score_type10s,  :t8_2013, :integer, default: 0
    add_column :score_type10s,  :t9_2013, :integer, default: 0
    add_column :score_type10s, :t10_2013, :integer, default: 0
    add_column :score_type10s, :t11_2013, :integer, default: 0
    add_column :score_type10s,  :t1_2014, :integer, default: 0
    add_column :score_type10s,  :t2_2014, :integer, default: 0
    add_column :score_type10s,  :t3_2014, :integer, default: 0
    add_column :score_type10s,  :t4_2014, :integer, default: 0
    add_column :score_type10s,  :t5_2014, :integer, default: 0
    add_column :score_type10s,  :t6_2014, :integer, default: 0
    add_column :score_type10s,  :t7_2014, :integer, default: 0
    add_column :score_type10s,  :t8_2014, :integer, default: 0
    add_column :score_type10s,  :t9_2014, :integer, default: 0
    add_column :score_type10s, :t10_2014, :integer, default: 0
    add_column :score_type10s, :t11_2014, :integer, default: 0
    add_column :score_type15s,  :t1_2015, :integer, default: 0
    add_column :score_type15s,  :t2_2015, :integer, default: 0
    add_column :score_type15s,  :t3_2015, :integer, default: 0
    add_column :score_type15s,  :t4_2015, :integer, default: 0
    add_column :score_type15s,  :t5_2015, :integer, default: 0
    add_column :score_type15s,  :t6_2015, :integer, default: 0
    add_column :score_type15s,  :t7_2015, :integer, default: 0
    add_column :score_type15s,  :t8_2015, :integer, default: 0
    add_column :score_type15s,  :t9_2015, :integer, default: 0
    add_column :score_type15s, :t10_2015, :integer, default: 0
    add_column :score_type15s, :t11_2015, :integer, default: 0
    add_column :score_type15s,  :t1_2016, :integer, default: 0
    add_column :score_type15s,  :t2_2016, :integer, default: 0
    add_column :score_type15s,  :t3_2016, :integer, default: 0
    add_column :score_type15s,  :t4_2016, :integer, default: 0
    add_column :score_type15s,  :t5_2016, :integer, default: 0
    add_column :score_type15s,  :t6_2016, :integer, default: 0
    add_column :score_type15s,  :t7_2016, :integer, default: 0
    add_column :score_type15s,  :t8_2016, :integer, default: 0
    add_column :score_type15s,  :t9_2016, :integer, default: 0
    add_column :score_type15s, :t10_2016, :integer, default: 0
    add_column :score_type15s, :t11_2016, :integer, default: 0
    add_column :score_type15s,  :t1_2017, :integer, default: 0
    add_column :score_type15s,  :t2_2017, :integer, default: 0
    add_column :score_type15s,  :t3_2017, :integer, default: 0
    add_column :score_type15s,  :t4_2017, :integer, default: 0
    add_column :score_type15s,  :t5_2017, :integer, default: 0
    add_column :score_type15s,  :t6_2017, :integer, default: 0
    add_column :score_type15s,  :t7_2017, :integer, default: 0
    add_column :score_type15s,  :t8_2017, :integer, default: 0
    add_column :score_type15s,  :t9_2017, :integer, default: 0
    add_column :score_type15s, :t10_2017, :integer, default: 0
    add_column :score_type15s, :t11_2017, :integer, default: 0
    add_column :score_type15s,  :t1_2018, :integer, default: 0
    add_column :score_type15s,  :t2_2018, :integer, default: 0
    add_column :score_type15s,  :t3_2018, :integer, default: 0
    add_column :score_type15s,  :t4_2018, :integer, default: 0
    add_column :score_type15s,  :t5_2018, :integer, default: 0
    add_column :score_type15s,  :t6_2018, :integer, default: 0
    add_column :score_type15s,  :t7_2018, :integer, default: 0
    add_column :score_type15s,  :t8_2018, :integer, default: 0
    add_column :score_type15s,  :t9_2018, :integer, default: 0
    add_column :score_type15s, :t10_2018, :integer, default: 0
    add_column :score_type15s, :t11_2018, :integer, default: 0
    add_column :score_type15s,  :t1_2019, :integer, default: 0
    add_column :score_type15s,  :t2_2019, :integer, default: 0
    add_column :score_type15s,  :t3_2019, :integer, default: 0
    add_column :score_type15s,  :t4_2019, :integer, default: 0
    add_column :score_type15s,  :t5_2019, :integer, default: 0
    add_column :score_type15s,  :t6_2019, :integer, default: 0
    add_column :score_type15s,  :t7_2019, :integer, default: 0
    add_column :score_type15s,  :t8_2019, :integer, default: 0
    add_column :score_type15s,  :t9_2019, :integer, default: 0
    add_column :score_type15s, :t10_2019, :integer, default: 0
    add_column :score_type15s, :t11_2019, :integer, default: 0
  end
end

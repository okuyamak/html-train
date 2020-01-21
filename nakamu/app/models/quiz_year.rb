class QuizYear < ApplicationRecord
  validates :user_id,{presence:true}
  validates :miss2019, length: { is: 50 }            # 「50文字のみ」
  validates :miss2018, length: { is: 50 }            # 「50文字のみ」
  validates :miss2017, length: { is: 50 }            # 「50文字のみ」
  validates :miss2016, length: { is: 50 }            # 「50文字のみ」
  validates :miss2015, length: { is: 50 }            # 「50文字のみ」
  validates :miss2014, length: { is: 50 }            # 「50文字のみ」
  validates :miss2013, length: { is: 50 }            # 「50文字のみ」
  validates :miss2012, length: { is: 50 }            # 「50文字のみ」
  validates :miss2011, length: { is: 50 }            # 「50文字のみ」
  validates :miss2010, length: { is: 50 }            # 「50文字のみ」
end

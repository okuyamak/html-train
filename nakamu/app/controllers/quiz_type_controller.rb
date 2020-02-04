class QuizTypeController < ApplicationController
  before_action :authenticate_user
  # before_action :year_2019, only: [:r01_10, :r01_20, :r01_30, :r01_40, :r01_50, :r01_miss]
  # before_action :year_, only: [:r01_10, :r01_20, :r01_30, :r01_40, :r01_50, :r01_miss]
  before_action :no_101, only: [:type1_2010,:type1_2011,:type1_2012,:type1_2013,:type1_2014,:type1_2015,:type1_2016,:type1_2017,:type1_2018,:type1_2019]
  before_action :no_102, only: [:type2_2010,:type2_2011,:type2_2012,:type2_2013,:type2_2014,:type2_2015,:type2_2016,:type2_2017,:type2_2018,:type2_2019]
  before_action :no_103, only: [:type3_2010,:type3_2011,:type3_2012,:type3_2013,:type3_2014,:type3_2015,:type3_2016,:type3_2017,:type3_2018,:type3_2019]
  before_action :no_104, only: [:type4_2010,:type4_2011,:type4_2012,:type4_2013,:type4_2014,:type4_2015,:type4_2016,:type4_2017,:type4_2018,:type4_2019]
  before_action :no_105, only: [:type5_2010,:type5_2011,:type5_2012,:type5_2013,:type5_2014,:type5_2015,:type5_2016,:type5_2017,:type5_2018,:type5_2019]
  before_action :no_106, only: [:type6_2010,:type6_2011,:type6_2012,:type6_2013,:type6_2014,:type6_2015,:type6_2016,:type6_2017,:type6_2018,:type6_2019]
  before_action :no_107, only: [:type7_2010,:type7_2011,:type7_2012,:type7_2013,:type7_2014,:type7_2015,:type7_2016,:type7_2017,:type7_2018,:type7_2019]
  before_action :no_108, only: [:type8_2010,:type8_2011,:type8_2012,:type8_2013,:type8_2014,:type8_2015,:type8_2016,:type8_2017,:type8_2018,:type8_2019]
  before_action :no_109, only: [:type9_2010,:type9_2011,:type9_2012,:type9_2013,:type9_2014,:type9_2015,:type9_2016,:type9_2017,:type9_2018,:type9_2019]
  before_action :no_110, only: [:type10_2010,:type10_2011,:type10_2012,:type10_2013,:type10_2014,:type10_2015,:type10_2016,:type10_2017,:type10_2018,:type10_2019]
  before_action :no_111, only: [:type11_2010,:type11_2011,:type11_2012,:type11_2013,:type11_2014,:type11_2015,:type11_2016,:type11_2017,:type11_2018,:type11_2019]

  before_action :year_2010, only: [:type1_2010,:type2_2010,:type3_2010,:type4_2010,:type5_2010,:type6_2010,:type7_2010,:type8_2010,:type9_2010,:type10_2010,:type11_2010]
  before_action :year_2011, only: [:type1_2011,:type2_2011,:type3_2011,:type4_2011,:type5_2011,:type6_2011,:type7_2011,:type8_2011,:type9_2011,:type10_2011,:type11_2011]
  before_action :year_2012, only: [:type1_2012,:type2_2012,:type3_2012,:type4_2012,:type5_2012,:type6_2012,:type7_2012,:type8_2012,:type9_2012,:type10_2012,:type11_2012]
  before_action :year_2013, only: [:type1_2013,:type2_2013,:type3_2013,:type4_2013,:type5_2013,:type6_2013,:type7_2013,:type8_2013,:type9_2013,:type10_2013,:type11_2013]
  before_action :year_2014, only: [:type1_2014,:type2_2014,:type3_2014,:type4_2014,:type5_2014,:type6_2014,:type7_2014,:type8_2014,:type9_2014,:type10_2014,:type11_2014]
  before_action :year_2015, only: [:type1_2015,:type2_2015,:type3_2015,:type4_2015,:type5_2015,:type6_2015,:type7_2015,:type8_2015,:type9_2015,:type10_2015,:type11_2015]
  before_action :year_2016, only: [:type1_2016,:type2_2016,:type3_2016,:type4_2016,:type5_2016,:type6_2016,:type7_2016,:type8_2016,:type9_2016,:type10_2016,:type11_2016]
  before_action :year_2017, only: [:type1_2017,:type2_2017,:type3_2017,:type4_2017,:type5_2017,:type6_2017,:type7_2017,:type8_2017,:type9_2017,:type10_2017,:type11_2017]
  before_action :year_2018, only: [:type1_2018,:type2_2018,:type3_2018,:type4_2018,:type5_2018,:type6_2018,:type7_2018,:type8_2019,:type9_2019,:type10_2019,:type11_2019]
  before_action :year_2019, only: [:type1_2019,:type2_2019,:type3_2019,:type4_2019,:type5_2019,:type6_2019,:type7_2019,:type8_2019,:type9_2019,:type10_2019,:type11_2019]


  before_action :redirect_quiz,except: [:type1, :type2,:type3, :type4,:type5, :type6,:type7, :type8,:type9, :type10,:type11]
  def redirect_quiz
    redirect_to("/quiz/base")
  end
  def no_101
    $quiz_no = 101
  end
  def no_102
    $quiz_no = 102
  end
  def no_103
    $quiz_no = 103
  end
  def no_104
    $quiz_no = 104
  end
  def no_105
    $quiz_no = 105
  end
  def no_106
    $quiz_no = 106
  end
  def no_107
    $quiz_no = 107
  end
  def no_108
    $quiz_no = 108
  end
  def no_109
    $quiz_no = 109
  end
  def no_110
    $quiz_no = 110
  end
  def no_111
    $quiz_no = 111
  end

  def year_2010
    $quiz_year = [2010]
  end
  def year_2011
    $quiz_year = [2011]
  end
  def year_2012
    $quiz_year = [2012]
  end
  def year_2013
    $quiz_year = [2013]
  end
  def year_2014
    $quiz_year = [2014]
  end
  def year_2015
    $quiz_year = [2015]
  end
  def year_2016
    $quiz_year = [2016]
  end
  def year_2017
    $quiz_year = [2017]
  end
  def year_2018
    $quiz_year = [2018]
  end
  def year_2019
    $quiz_year = [2019]
  end

  def no_miss
    $quiz_year =[ 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018 ]
    $quiz_no = 1002
    $miss_set = [
      @@year.miss2010,
      @@year.miss2011,
      @@year.miss2012,
      @@year.miss2013,
      @@year.miss2014,
      @@year.miss2015,
      @@year.miss2016,
      @@year.miss2017,
      @@year.miss2018,
    ]
  end
  # def no_101
  #   $quiz_year = [2018]
  #   $quiz_no = 0
  #   $miss_set = [
  #     @@year.miss2018,
  #   ]
  # end
  def type1
  end
  def type2
  end
  def type3
  end
  def type4
  end
  def type5
  end
  def type6
  end
  def type7
  end
  def type8
  end
  def type9
  end
  def type10
  end
  def type11
  end

  def  type1_2010
  end
  def  type2_2010
  end
  def  type3_2010
  end
  def  type4_2010
  end
  def  type5_2010
  end
  def  type6_2010
  end
  def  type7_2010
  end
  def  type8_2010
  end
  def  type9_2010
  end
  def type10_2010
  end
  def type11_2010
  end
  def  type1_2011
  end
  def  type2_2011
  end
  def  type3_2011
  end
  def  type4_2011
  end
  def  type5_2011
  end
  def  type6_2011
  end
  def  type7_2011
  end
  def  type8_2011
  end
  def  type9_2011
  end
  def type10_2011
  end
  def type11_2011
  end
  def  type1_2012
  end
  def  type2_2012
  end
  def  type3_2012
  end
  def  type4_2012
  end
  def  type5_2012
  end
  def  type6_2012
  end
  def  type7_2012
  end
  def  type8_2012
  end
  def  type9_2012
  end
  def type10_2012
  end
  def type11_2012
  end
  def  type1_2013
  end
  def  type2_2013
  end
  def  type3_2013
  end
  def  type4_2013
  end
  def  type5_2013
  end
  def  type6_2013
  end
  def  type7_2013
  end
  def  type8_2013
  end
  def  type9_2013
  end
  def type10_2013
  end
  def type11_2013
  end
  def  type1_2014
  end
  def  type2_2014
  end
  def  type3_2014
  end
  def  type4_2014
  end
  def  type5_2014
  end
  def  type6_2014
  end
  def  type7_2014
  end
  def  type8_2014
  end
  def  type9_2014
  end
  def type10_2014
  end
  def type11_2014
  end
  def  type1_2015
  end
  def  type2_2015
  end
  def  type3_2015
  end
  def  type4_2015
  end
  def  type5_2015
  end
  def  type6_2015
  end
  def  type7_2015
  end
  def  type8_2015
  end
  def  type9_2015
  end
  def type10_2015
  end
  def type11_2015
  end
  def  type1_2016
  end
  def  type2_2016
  end
  def  type3_2016
  end
  def  type4_2016
  end
  def  type5_2016
  end
  def  type6_2016
  end
  def  type7_2016
  end
  def  type8_2016
  end
  def  type9_2016
  end
  def type10_2016
  end
  def type11_2016
  end
  def  type1_2017
  end
  def  type2_2017
  end
  def  type3_2017
  end
  def  type4_2017
  end
  def  type5_2017
  end
  def  type6_2017
  end
  def  type7_2017
  end
  def  type8_2017
  end
  def  type9_2017
  end
  def type10_2017
  end
  def type11_2017
  end
  def  type1_2018
  end
  def  type2_2018
  end
  def  type3_2018
  end
  def  type4_2018
  end
  def  type5_2018
  end
  def  type6_2018
  end
  def  type7_2018
  end
  def  type8_2018
  end
  def  type9_2018
  end
  def type10_2018
  end
  def type11_2018
  end
  def  type1_2019
  end
  def  type2_2019
  end
  def  type3_2019
  end
  def  type4_2019
  end
  def  type5_2019
  end
  def  type6_2019
  end
  def  type7_2019
  end
  def  type8_2019
  end
  def  type9_2019
  end
  def type10_2019
  end
  def type11_2019
  end

  def type1_miss
  end
  def type2_miss
  end
  def type3_miss
  end
  def type4_miss
  end
  def type5_miss
  end
  def type6_miss
  end
  def type7_miss
  end
  def type8_miss
  end
  def type9_miss
  end
  def type10_miss
  end
  def type11_miss
  end
end

flow(:id => "opportunity") do |f|

  frame = [{"startDateType" => "DAYS", "startDateValue"=>"10","endDateType"=>"TOMORROW","endDateValue"=>"Tomorrow","interval"=>1,"intervalUnit"=>"DAYS","dayWithinPeriod"=>"LAST_DAY"}]
  tap(:id => "opportunity", :time_intervals => frame, :snapshots => true)

  graph(:path => "formula.grf") do
    metadata(:id => "opportunity")
  end

end
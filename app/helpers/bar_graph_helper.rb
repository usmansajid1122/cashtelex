module BarGraphHelper

	def get_graph_data
		_html = ''
	    @date_array = (6.days.ago.to_date..Date.today).map{ |date| date.strftime("%b %d") }
	    @rate_array = [50,100,66,15]
	    @chart = LazyHighCharts::HighChart.new('graph') do |f|
		    f.title(text: 'Cashtelex')
		    f.xAxis(:type=> "datetime",categories: @date_array)
		    f.plotOptions(line: {marker: {enabled: false}})
		    f.series(name: "Cashtelex", yAxis: 0, data: [100,110,96,82])
		    f.series(name: "USD", yAxis: 0, data: [101,122,82,120])
		    f.series(name: "BTC", yAxis: 0, data: [51,41,31,61])
		    end
			_html += high_chart("barchart", @chart)
			_html.html_safe	
	end	

	def get_graph_gold_data
		_html = ''
	    @date_array = (6.days.ago.to_date..Date.today).map{ |date| date.strftime("%b %d") }
	    @rate_array = [50,100,66,15]
	    @chart = LazyHighCharts::HighChart.new('graph') do |f|
		    f.title(text: 'Gold')
		    f.xAxis(:type=> "datetime",categories: @date_array)
		    f.plotOptions(line: {marker: {enabled: false}})
		    f.series(name: "Cashtelex", yAxis: 0, data: [100,110,96,82])
		    f.series(name: "USD", yAxis: 0, data: [101,122,82,120])
		    f.series(name: "BTC", yAxis: 0, data: [51,41,31,61])
	    end
		_html += high_chart("barchart1", @chart)
		_html.html_safe	
	end	
end



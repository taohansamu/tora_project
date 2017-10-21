module AppsHelper
	def star_rating_for value		
		if value
			html="<div style='color: yellow;'>"
			value=(value.round(1)*2).round/2.0
			while value>0.5
				value-=1.0
				html+="<span class='fa fa-star'></span>"
			end
			html+="<span class='fa fa-star-half-o'></span>" if value>0
			raw(html+'</div>')
		else
			raw t('views.app.no_review')
		end				
	end
end

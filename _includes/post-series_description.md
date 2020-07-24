{% if page.series %}
	{% assign series_title = page.series %}
{% elsif include.series_title %}
	{% assign series_title = include.series_title %}
{% endif %}
{% assign series_description="" %}

{% if series_title %}
	{% for series in site.data.post_series %}
		{% if series.title == series_title %}
			{% assign series_description = series.description %}
		{% endif %}
	{% endfor%}
{% endif %}


{% if series_description.size>1 %}
	{{series_description}}
{% endif %}

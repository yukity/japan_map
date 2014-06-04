$ ->
  xy = d3.geo
    .mercator()
    .scale(8000)
    .center([139, 36])

  path = d3.geo
    .path()
    .projection(xy)

  map = d3.select('#container')
    .append('svg:svg')
    .attr('width', 960)
    .attr('height', 600)

  d3.json "data/japan.geojson", (json) ->
    map.append('svg:g')
      .attr('class', 'tracts')
      .selectAll("path")
      .data(json.features)
      .enter()
      .append("svg:path")
      .attr("d", path)
      .attr("fill-opacity", 0.5)
      .attr("fill", "green")
      .attr("stroke", "#222");
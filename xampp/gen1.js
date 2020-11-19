var margin = { top: 30, right: 20, bottom: 30, left: 50 };
var width = 1500 - margin.left - margin.right;
var height = 500 - margin.top - margin.bottom;
var barHeight = 20;

var x = d3.scale.linear().range([0, width]);
var y = d3.scale.linear().range([height, 0]);
var xAxis = d3.svg.axis().scale(x).orient("bottom");
var yAxis = d3.svg.axis().scale(y).orient("left");

var svg = d3
  .select("body")
  .append("svg")
  .attr("width", width + margin.left + margin.right)
  .attr("height", height + margin.top + margin.bottom)
  .append("g")
  .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

var allgroup = svg.append("g");

var tooltip = svg.append("text").style("visibility", "hidden");

// Get the data
generation1 = [];
all_scores = [];
d3.json("pokemon.php", function (error, data) {
  data.forEach(function (d) {
    d.pokedex_number = +d.pokedex_number;
    d.hp = +d.hp;
    d.attack = +d.attack;
    d.defense = +d.defense;
    d.generation = +d.generation;
    d.is_legendary = +d.is_legendary;
    d.against_bug = +d.against_bug;
    d.against_dark = +d.against_dark;
    d.against_dragon = +d.against_dragon;
    d.against_electric = +d.against_electric;
    d.against_fairy = +d.against_fairy;
    d.against_fight = +d.against_fight;
    d.against_fire = +d.against_fire;
    d.against_flying = +d.against_flying;
    d.against_ghost = +d.against_ghost;
    d.against_grass = +d.against_grass;
    d.against_ground = +d.against_ground;
    d.against_ice = +d.against_ice;
    d.against_normal = +d.against_normal;
    d.against_poison = +d.against_poison;
    d.against_psychic = +d.against_psychic;
    d.against_rock = +d.against_rock;
    d.against_steel = +d.against_steel;
    d.against_water = +d.against_water;
    d.score = +d.score;
    if (d.generation === 1) {
      generation1.push(d);
      d.score =
        d.defense /
          (d.against_bug +
            d.against_dark +
            d.against_dragon +
            d.against_electric +
            d.against_fairy +
            d.against_fight +
            d.against_fire +
            d.against_flying +
            d.against_ghost +
            d.against_grass +
            d.against_ground +
            d.against_ice +
            d.against_normal +
            d.against_poison +
            d.against_psychic +
            d.against_rock +
            d.against_steel +
            d.against_water) +
        d.attack * (1 + d.is_legendary);

      all_scores.push(d.score);
    }
  });
  var barWidth = width / generation1.length;
  console.log(generation1);

  // generation1.forEach(function (gd) {
  //   d.pokedex_number = +d.pokedex_number;

  // add rect

  svg.attr("height", height + margin.top);
  var bar = allgroup
    .selectAll("g")
    .data(data)
    .enter()
    .append("g")
    .attr("transform", function (d, i) {
      return "translate(" + i * barWidth + ",0)";
    });

  bar
    .append("rect")
    .style("fill", "steelblue")
    .attr("y", function (d) {
      if (d.generation === 1) {
        return d.score;
      }
    })
    .attr("height", function (d) {
      if (d.generation === 1) {
        return height - d.score;
      }
    })
    .attr("width", barWidth - 1)
    .on("mouseover", function (d, i) {
      var selectedBar = d3.select(this);

      var tipx = barWidth * i;
      var tipy = height - margin.top - d3.select(this).attr("height");
      tooltip.attr("x", tipx);
      tooltip.attr("y", tipy);
      tooltip.attr("dx", -20);
      tooltip.attr("dy", 20);
      tooltip.style("visibility", "visible");
      tooltip.style("fill", "black");
      selectedBar.style("fill", "orange");
      tooltip.text(d.name);
    })
    .on("mouseout", function () {
      var selectedBar = d3.select(this);
      tooltip.style("visibility", "hidden");
      selectedBar.style("fill", "steelblue");
    });

  // Scale the range of the data
  x.domain([0, generation1.length]);
  y.domain([0, 325]);

  // svg.append("path"); // Add the valueline path.

  svg
    .append("g") // Add the X Axis
    .attr("class", "x axis")
    .attr("transform", "translate(0," + height + ")")
    .call(xAxis);

  svg
    .append("g") // Add the Y Axis
    .attr("class", "y axis")
    .call(yAxis);
});

let selected_generation = 1;

var margin = { top: 30, right: 100, bottom: 50, left: 100 };
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

svg
  .append("text")
  .attr("transform", "rotate(-90)")
  .attr("y", -70)
  .attr("x", 0 - height / 2 )
  .attr("dy", "1em")
  .style("text-anchor", "middle")
  .style("fill", "black")
  .text("Score");

svg
  .append("text")
  .attr(
    "transform",
    "translate(" +
      (width / 2) +
      " ," +
      (height + 40) +
      ")"
  )
  .style("text-anchor", "middle")
  .text("Rank #");

var allgroup = svg.append("g");

var tooltip = svg.append("text").style("visibility", "hidden");

// Get the data
generation = [];
all_scores = [];
top_scores = [];
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
    if (d.generation === selected_generation) {
      generation.push(d);
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

  data = generation;

  var barWidth = width / generation.length;

  data.sort((a, b) => {
    return b.score - a.score;
  });

  // sort all scores from greatest to least
  all_scores.sort((a, b) => {
    return b - a;
  });

  // obtain the top scores from all_scores
  top_scores.push(all_scores.slice(0, 6));

  top_scores.sort((a, b) => {
    return b - a;
  });

  lowest_top_score = top_scores[0][5];

  // Scale the range of the data
  x.domain([1, generation.length + 1]);
  y.domain([
    0,
    d3.max(data, function (d) {
      return d.score;
    }),
  ]);

  svg
    .append("g") // Add the X Axis
    .attr("class", "x axis")
    .attr("transform", "translate(0," + height + ")")
    .call(xAxis);

  svg
    .append("g") // Add the Y Axis
    .attr("class", "y axis")
    .call(yAxis);

  svg.attr("height", height + margin.top);
  var bar = allgroup
    .selectAll("g")
    .data(data)
    .enter()
    .append("g")
    .attr("transform", function (d, i) {
      return "translate(" + i * barWidth + ",0)";
    });

  // add rectangles
  bar
    .append("rect")
    .style("fill", function (d) {
      if (d.score >= lowest_top_score) {
        return "green";
      } else {
        return "steelblue";
      }
    })
    .attr("y", function (d) {
      return y(d.score);
    })
    .attr("height", function (d) {
      return height - y(d.score);
    })
    .attr("width", barWidth - 1)
    .on("mouseover", function (d, i) {
      var selectedBar = d3.select(this);

      var tipx = barWidth * i;
      var tipy = height - margin.top - d3.select(this).attr("height");
      tooltip.attr("x", tipx);
      tooltip.attr("y", tipy);
      tooltip.attr("dx", -60);
      tooltip.attr("dy", 20);
      tooltip.style("visibility", "visible");
      tooltip.style("fill", "clear");
      tooltip.style("font-style", "oblique");
      tooltip.style("font-size", "20px");
      tooltip.style("stroke", "black");
      tooltip.style("stroke-width", "1");
      selectedBar.style("fill", "orange");
      tooltip.text(d.name + " - Score: " + d.score.toFixed(1));
    })
    .on("mouseout", function () {
      var selectedBar = d3.select(this);
      tooltip.style("visibility", "hidden");
      selectedBar.style("fill", function (d) {
        if (d.score >= lowest_top_score) {
          return "green";
        } else {
          return "steelblue";
        }
      });
    });
});

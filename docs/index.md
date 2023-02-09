# Welcome to MkDocs


<div class="starfield" >
<div>Mkdocs </div>
<div>the coolest thing since ...... </div>
<img class="fade-in-image" src="https://cssanimation.rocks//demo/starwars/images/star.svg">
<img class="fade-in-image" src="https://cssanimation.rocks//demo/starwars/images/wars.svg">
<div class="fade-in-image-late" > may the docs be with you. </div>
</div>


## vega test

load this data "https://vega.github.io/vega-lite/examples/data/movies.json" 

```vegalite
{
"$schema": "https://vega.github.io/schema/vega-lite/v5.json",
"data": {"url": "https://vega.github.io/vega-lite/examples/data/movies.json"},
"transform": [{
"filter": {"and": [
    {"field": "IMDB Rating", "valid": true},
    {"field": "Rotten Tomatoes Rating", "valid": true}
]}
}],
"mark": "rect",
"width": 300,
"height": 200,
"encoding": {
"x": {
    "bin": {"maxbins":60},
    "field": "IMDB Rating",
    "type": "quantitative"
},
"y": {
    "bin": {"maxbins": 40},
    "field": "Rotten Tomatoes Rating",
    "type": "quantitative"
},
"color": {
    "aggregate": "count",
    "type": "quantitative"
}
},
"config": {
"view": {
    "stroke": "transparent"
}
}
}
```

for more on this go to [vega docs](https://vega.github.io/vega-lite/examples/)


For full documentation visit [mkdocs.org](https://www.mkdocs.org).

## Commands

* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs -h` - Print help message and exit.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

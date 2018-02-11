# crystal_gnuplot_toy

This is a minimum tool for running Gnuplot with Crystal. 

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  crystal_gnuplot_toy:
    github: kojix2/crystal_gnuplot_toy
```

## Usage

```crystal
require "crystal_gnuplot_toy"
```
![sin(x)](https://raw.githubusercontent.com/kojix2/crystal_gnuplot_toy/master/img/sin.png)
```crystal
Gnuplot.plot do |s|
  s << "plot sin(x)"
end
```
![scatter plot](https://raw.githubusercontent.com/kojix2/crystal_gnuplot_toy/master/img/scatter.png)
```crystal
x = Array(Float64).new(100){ rand(10.0..20.0) }
y = Array(Float64).new(100){ rand(100.0..200.0) }

Gnuplot.plot do |s|
  s << "set title 'SCATTER'"
  s << "plot '-' pt 6 lt rgb 'red' t 'circle'"
  s << [x, y].to_gp
end
```
![lines plot](https://raw.githubusercontent.com/kojix2/crystal_gnuplot_toy/master/img/lines.png)
```crystal
memo = 0
x = Array(Float64).new(100,0.0)

# Optimistic random walk
100.times do |i|
  memo = memo + rand(-0.9..1.0)
  x[i] = memo
end

Gnuplot.plot do |s|
  s << "set title 'LINES'"
  s << "plot '-' with lines title 'x'"
  s << x.to_gp
end
```

## Development
I want an easy-to-use Gnuplot library running on Crystal.
I had no choice but to write this tool myself.
Can anyone make plotting tools easy to use in crystal language?

## Contributing
Pull requests are always welcome.

## Contributors

- [[your-github-name]](https://github.com/[your-github-name]) kojix2 - creator, maintainer

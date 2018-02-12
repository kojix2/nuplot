# nuplot

This is a minimum tool for running Gnuplot with Crystal. 

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  nuplot:
    github: kojix2/nuplot
```

## Usage

```crystal
require "nuplot"
```
![sin(x)](https://raw.githubusercontent.com/kojix2/nuplot/master/img/sin.png)
```crystal
Gnuplot.plot do |s|
  s << "plot sin(x)"
end
```
![scatter plot](https://raw.githubusercontent.com/kojix2/nuplot/master/img/scatter2d.png)
```crystal
x = Array(Float64).new(100){ rand(10.0..20.0) }
y = Array(Float64).new(100){ rand(100.0..200.0) }

Gnuplot.plot do |s|
  s << "set title 'SCATTER'"
  s << "plot '-' pt 6 lt rgb 'red' t 'circle'"
  s << [x, y].to_gp
end
```
![lines plot](https://raw.githubusercontent.com/kojix2/nuplot/master/img/lines.png)
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
![scatter plot 3d](https://raw.githubusercontent.com/kojix2/nuplot/master/img/scatter3d.png)
```crystal
x = Array(Float64).new(1000){ rand(-10.0..10.0) }
y = Array(Float64).new(1000){ rand(-10.0..10.0) }
z = Array(Float64).new(1000){ |i| x[i]**2 + y[i]**2 }

Gnuplot.plot do |s|
  s << "set title 'SCATTER 3D'"
  s << "splot '-' pt 6 t 'z=x^2+y^2'"
  s << [x,y,z].to_gp
end
```

## Development
What I do not do
- Replacing the gnuplot idiom with a new Crystal object.

## Contributing
Pull requests are always welcome.

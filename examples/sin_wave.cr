require "../src/crystal_gnuplot_toy.cr"

Gnuplot.plot do |s|
  s << "plot sin(x)"
end

require "../src/nuplot.cr"

Gnuplot.plot do |s|
  s << "plot sin(x)"
end

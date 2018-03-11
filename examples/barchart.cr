require "../src/nuplot.cr"

y = Array(Float64).new(7){|i| i + rand(0.0..1.0) }
x = %w(a b c d e f g)
x = gp_escape(x)
puts typeof([x,y])

Gnuplot.plot do |s|
  s << "set title 'BAR CHART'"
  s << "set style fill solid"
  s << "set boxwidth 0.5"
  s << "plot '-' u 2:xtic(1) w boxes t 'bar'"
  s << to_gp([x, y])
end

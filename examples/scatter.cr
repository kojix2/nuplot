require "../src/crystal_gnuplot_toy.cr"

x = Array.new(100){ rand(10.0..20.0) }
y = Array.new(100){ rand(100.0..200.0) }

Gnuplot.plot do |s|
  s << "set title 'SCATTER'"
  s << "set xrange[5:25]"
  s << "set yrange[50:250]"
  s << "plot '-' pt 6 lt rgb 'red' t 'circle'"
  s << [x,y].to_gp
end
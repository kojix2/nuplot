require "../src/nuplot.cr"

x = Array(Float64).new(1000){ rand(-10.0..10.0) }
y = Array(Float64).new(1000){ rand(-10.0..10.0) }
z = Array(Float64).new(1000){ |i| x[i]**2 + y[i]**2 }

Gnuplot.plot do |s|
  s << "set title 'SCATTER 3D'"
  s << "splot '-' pt 6 lt rgb 'dark-turquoise' t 'z=x^2+y^2'"
  s << [x,y,z].to_gp
end

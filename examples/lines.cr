require "../src/nuplot.cr"

memo_x1 = 0
memo_x2 = 0
x1 = Array(Float64).new(100,0.0)
x2 = Array(Float64).new(100,0.0)

100.times do |i|
  memo_x1 = memo_x1 + rand(-0.9..1.0)
  x1[i] = memo_x1
  memo_x2 = memo_x2 + rand(-0.9..1.0)
  x2[i] = memo_x2
end


Gnuplot.plot do |s|
  s << "set title 'LINES'"
  s << "plot '-' with lines title 'x1', '-' with lines title 'x2'"
  s << x1.to_gp
  s << x2.to_gp
end

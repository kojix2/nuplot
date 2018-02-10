require "./gnuplot/*"

module Gnuplot
  def self.plot
    gargs = yield([] of String)
    gargs.unshift "gnuplot -p  << EOF"
    gargs.push "EOF"
    gcmd = gargs.join("\n")
    args = ["-c", gcmd]
    stdout = IO::Memory.new
    stderr = IO::Memory.new
    puts args
    status = Process.run("sh", args, output: stdout)
    puts status.success?
  end
end

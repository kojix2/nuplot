require "./crystal_gnuplot_toy/*"

module Gnuplot
  def self.plot
    gargs = yield([] of String)
    gargs.unshift "gnuplot -p  << EOF"
    gargs.push "EOF"
    gcmd = gargs.join("\n")
    puts gcmd
    args = ["-c", gcmd]

    stdout = IO::Memory.new
    stderr = IO::Memory.new
    status = Process.run("sh", args, output: stdout, error: stderr)
    unless status.success?
      puts stderr.to_s
    end
  end
end

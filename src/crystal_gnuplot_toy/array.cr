class Array

  # To Gnuplot Data
  # I know this code is not cool at all.
  # I want to know if there is a better way. 
  def to_gp
    case self
    when Array(Array(Float32))
      ar = self.transpose
      mapjoin(ar)
    when Array(Array(Float64))
      ar = self.transpose
      mapjoin(ar)
    when Array(Array(Int32))
      ar = self.transpose
      mapjoin(ar)
    when Array(Array(Int64))
      ar = self.transpose
      mapjoin(ar)
    else
      str = self.join("\n") + "\ne"
    end
  end

  private def mapjoin(ar)
    ar3 = ar.map do |ar2|
      ar2.join(" ")
    end
    ar3.join("\n") + "\ne"
  end
end

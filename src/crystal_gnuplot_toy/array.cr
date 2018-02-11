class Array
  def to_gp
    case self
    when Array(Array(Int8 | Int16 | Int32 | Int64 | UInt8 | UInt32 | UInt64 | Float32 | Float64))
      ar = self.transpose
      ar3 = ar.map do |ar2|
        ar2.join(" ")
      end
      ar3.join("\n") + "\ne"
    else
      str = self.join("\n")
      str += "\ne"
    end
  end
end

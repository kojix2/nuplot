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
    when Array(String)
      ar = self.gp_escape
      join_e(ar)
    when Array(Char)
      arr = Array(String)
      arr = self.map{|c| c.to_s}
      new_arr = gp_escape(arr)
      join_e(new_arr)
    when Array(Array(String)|Array(Float64)|Nil)
      new_arr = Array(Array(String)|Array(Float64))
      new_arr = self.compact
      item_size = new_arr.first.size
      factor_size = new_arr.size
      str = ""
      item_size.times do |i|
        factor_size.times do |f|
          str += new_arr[f][i].to_s
          str += " "
        end
        str = str.rchop 
        str += "\n"
      end
      str += "e"
    when Array(Array(String)|Array(Int32)|Nil)
      new_arr = Array(Array(String)|Array(Int32))
      new_arr = self.compact
      item_size = new_arr.first.size
      factor_size = new_arr.size
      str = ""
      item_size.times do |i|
        factor_size.times do |f|
          str += new_arr[f][i].to_s
          str += " "
        end
        str = str.rchop 
        str += "\n"
      end
      str += "e"
    else
      join_e(self)
    end
  end

  def gp_escape(arr = self)
    case arr
    when Array(String)
      arr.map do |s| 
        s = s.gsub("\"","\\\"")
        '"' + s + '"'
      end
    else
    end
  end

  private def mapjoin(ar)
    unless ar.nil?
      ar3 = ar.map do |ar2|
        ar2.join(" ")
      end
      ar3.join("\n") + "\ne"
    end
  end

  private def join_e(ar)
    unless ar.nil?
      ar.join("\n") + "\ne"
    end
  end
end

class ResultTestPrinter
  def initialize(scores, results)
    @scores = scores
    @results = results
  end

  def result
    case @scores
      when (30..32)
        return @results[0]
      when (25..29)
        return @results[1]
      when (19..24)
        return @results[2]
      when (14..18)
        return @results[3]
      when (9..13)
        return @results[4]
      when (4..8)
        return @results[5]
      else
        return @results[6]
      end
  end
end

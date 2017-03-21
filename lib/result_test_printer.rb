class ResultTestPrinter
  def initialize(scores, results)
    @scores = scores
    @results = results
  end

  def result
    case @scores
      when (30..32) then @results[0]
      when (25..29) then @results[1]
      when (19..24) then @results[2]
      when (14..18) then @results[3]
      when (9..13) then @results[4]
      when (4..8) then @results[5]
      else
        return @results[6]
      end
  end
end

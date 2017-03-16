class FileReader
  def initialize(file_path)
    if File.exist?(file_path)
      file = File.new(file_path, "r:UTF-8")
      @lines = file.readlines
      file.close
    else
      abort "File: #{file_path} was not found..."
    end
  end

  def lines
    @lines
  end
end
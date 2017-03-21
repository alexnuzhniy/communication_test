class FileReader
  attr_reader :lines

  def initialize(file_path)
    if File.exist?(file_path)
      @lines = File.readlines(file_path)
    else
      abort "File: #{file_path} was not found..."
    end
  end
end
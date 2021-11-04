class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    index_of_message = @line.index(':')
    len_of_message = @line.size
    @line.slice(index_of_message + 2, len_of_message - 1).strip
  end

  def log_level
    index_of_message = @line.index(':')
    @line.slice(1, index_of_message - 2).downcase
  end

  def reformat
    "#{self.message} (#{self.log_level})"
  end
end

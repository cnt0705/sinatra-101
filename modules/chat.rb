module Chat
  @filePath = File.expand_path('../logs/chat-logs.txt', __dir__)

  def messages
    messages = []
    File.open(@filePath, 'r') do |f|
      f.each_line { |line|
        messages.push(line)
      }
    end
    return messages
  end

  def write(name, message)
    date = DateTime.now.strftime('%Y/%m/%d %H:%M:%S')
    File.open(@filePath, 'a') do |f|
      f.puts(name + ': ' + message + ' [' + date + ']')
    end
  end

  module_function :messages
  module_function :write
end

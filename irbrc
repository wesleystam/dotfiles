IRB.conf[:USE_AUTOCOMPLETE] = false

class IRB::Irb
  def handle_exception(e)
    puts "\n#{e.message}"
    puts(e.backtrace)
  end
end

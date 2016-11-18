class App
  def self.logger
    return @logger if @logger.present?

    simple_logger = Logger.new(test? ? '/dev/null' : STDOUT).tap do |l|
      l.level = Logger.const_get(ENV['LOGGER_LEVEL'])
    end

    @logger = ActiveSupport::TaggedLogging.new(simple_logger)
  end

  def self.test?
    ENV['APP_ENV'] == 'test'
  end

  def self.root
    @root ||= Pathname.new(File.expand_path("../../../", __FILE__))
  end
end
module ImportWordpress
  extend self

  EXPORT_PATH = Rails.root
  EXPORT_FILE = "wordpress.2014-01-21.xml"

  def start(filename = nil)
    filename = "#{EXPORT_PATH}/#{EXPORT_FILE}" unless filename.present?
    file = Nokogiri::XML(File.open(filename))
  end
end

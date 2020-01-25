# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end

class WithProtocolBufferInflector < Zeitwerk::Inflector
  def camelize(basename, abspath)
    if basename =~ /\A.*_pb$/
      basename.gsub("_pb", '').camelize #<- `_pb` をここで除去した形でRails側でロードするように対応
    else
      super
    end
  end
end

Rails.autoloaders.each do |autoloader|
  autoloader.inflector = WithProtocolBufferInflector.new
end

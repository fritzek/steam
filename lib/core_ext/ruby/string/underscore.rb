class String
  def underscore
    # self[0, 1].downcase + self[1..-1].gsub(/[A-Z]/) { |c| "_#{c.downcase}" }
    word = to_s
    word.gsub!(/::/, '/')
    word.gsub!(/([A-Z]+)([A-Z][a-z])/,'\1_\2')
    word.gsub!(/([a-z\d])([A-Z])/,'\1_\2')
    word.tr!("-", "_")
    word.downcase!
    word
  end
end unless String.method_defined?(:underscore)
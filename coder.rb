class Coder

  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def permutation_matrix
    {
      'a' => 'b',
      'b' => 'c'
    }
  end

  def get_coded_text
    text.split('').each do |char|
      text.gsub!('a', 'b')
    end
    text
  end

end

source_file = File.open(ARGV[0], 'r')
coder = Coder.new(source_file.read.chomp)
print coder.get_coded_text



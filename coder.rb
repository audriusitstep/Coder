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
      if permutation_matrix.keys.include?(char)
        text.gsub!(char, permutation_matrix[char])
      end
    end
    text
  end

end

source_file = File.open(ARGV[0], 'r')
coder = Coder.new(source_file.read.chomp)
puts coder.get_coded_text



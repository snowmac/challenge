require 'yaml'

class Calculator

  def initialize(color_1, color_2)
    @color_1 = color_1
    @color_2 = color_2
    @config = YAML::load_file(File.join(__dir__, '../config/app.yml'))
  end

  def is_acceptable?
    compute <= @config['difference']['tolerance']
  end

  def compute
    rgb_1 = parse_rgb(@color_1)
    rgb_2 = parse_rgb(@color_2)

    r = rgb_1[:r] - rgb_2[:r]
    g = rgb_1[:g] - rgb_2[:g]
    b = rgb_1[:b] - rgb_2[:b]

    r = r ** 2
    g = g ** 2
    b = b ** 2

    x = r+g+b

    Math.sqrt(x)
  end

  private

  #expects string thats a csv
  def parse_rgb(color)
    rgbs = color.split(',')

    {
      r: rgbs[0].to_i,
      g: rgbs[1].to_i,
      b: rgbs[2].to_i
    }
  end

end

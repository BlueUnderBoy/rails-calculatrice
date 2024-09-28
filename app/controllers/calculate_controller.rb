class CalculateController < ApplicationController
  def home
    render({:template => "calculate_templates/homepage"})
  end

  def square 
    render({:template => "calculate_templates/homepage"})
  end

  def square_root 
    render({:template => "calculate_templates/square_root"})
  end

  def random 
    render({:template => "calculate_templates/random"})
  end

  def payment
    render({:template => "calculate_templates/payment"})
  end

  def square_results 
    @num = params.fetch("number").to_f
    @ns = (@num * @num).to_f
    render({:template => "calculate_templates/square_results"})
  end

  def square_root_results
    @num = params.fetch("number").to_f
    @nsr = Math.sqrt(@num)
    render({:template => "calculate_templates/squareroot_results"})
  end

  def payment_results 
    @raw_apr = params.fetch("apr").to_f
    @raw_years = params.fetch("years").to_f
    @raw_principal = params.fetch("principal").to_f

    @apr = format('%.4f', @raw_apr.to_f)  
    @years = @raw_years
    @principal = @raw_principal.to_fs(:currency)

    @rate = @raw_apr / 100.0 / 12 
    @n = (@years * 12)
    p1 = (@rate * @raw_principal)
    p2 = (1 - ((1 + @rate)**(-@n)))  

    if p2.zero?
      @payment = 0 
    else
      @payment = (p1 / p2).to_fs(:currency)
    end
    render({:template => "calculate_templates/payment_results"})
  end

  def random_results 
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f

    @random = rand(@min..@max)
    render({:template => "calculate_templates/random_results"})
  end

end

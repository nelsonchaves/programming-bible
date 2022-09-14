def process_text(string)
  string.map(&:strip).join(" ")
end

p process_text(["Hi, \n", " Are you having fun?    "])

def process_text(string)
  string.map{ |item| item.strip }.join(" ")
end

p process_text(["Hi, \n", " Are you having fun?    "])

p [1, 2, 3].map { |x| x.odd? }
p [1, 2, 3].map(&:odd?)

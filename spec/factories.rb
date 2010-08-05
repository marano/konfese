Factory.define :post do |f|
  f.body "I kissed #{Forgery::Name.full_name}"
end


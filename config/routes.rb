Rails.application.routes.draw do
  get("/", {:controller => "calculate", :action=> "home"})
  get("/square/new", {:controller => "calculate", :action=> "square"})
  get("/square_root/new", {:controller => "calculate", :action=> "square_root"})
  get("/random/new", {:controller => "calculate", :action=> "random"})
  get("/payment/new", {:controller => "calculate", :action=> "payment"})
  get("/square/results", {:controller => "calculate", :action=> "square_results"})
  get("/square_root/results", {:controller => "calculate", :action=> "squareroot_results"})
  get("/payment/results", {:controller => "calculate", :action=> "payment_results"})
  get("/random/results", {:controller => "calculate", :action=> "random_results"})
end

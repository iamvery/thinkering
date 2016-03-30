Pakyow::App.routes do
  default do
    Thunk.create("body" => "lol", "url" => "http://iamvery.com")
    view.scope(:thunk).apply(Thunk.all)
  end

  # define application routes here
end

Pakyow::App.routes do
  default do
    Thunk.create("body" => "lol", "url" => "http://iamvery.com")
    view.scope(:thunk).apply(Thunk.all)
    view.scope(:form).bind(Thunk.new.to_h)
  end

  restful :thunk, "/thunks" do
    create do
    end
  end
end

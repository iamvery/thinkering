Pakyow::App.routes do
  default do
    view.scope(:thunk).mutate(:list, with: data(:thunk).all)
    view.scope(:form).bind(Thunk.new.to_h)
  end

  restful :thunk, "/thunks" do
    create do
      data(:thunk).create(params[:form])
      redirect "/"
    end
  end
end

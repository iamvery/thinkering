Pakyow::App.mutable :thunk do
  action :create do |params|
    Thunk.create(params)
  end
end

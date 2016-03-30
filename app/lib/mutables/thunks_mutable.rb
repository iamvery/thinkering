Pakyow::App.mutable :thunk do
  query :all do
    Thunk.all
  end

  action :create do |params|
    Thunk.create(params)
  end
end

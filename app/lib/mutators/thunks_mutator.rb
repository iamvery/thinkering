Pakyow::App.mutators :thunk do
  mutator :list do |view, data|
    view.apply(data)
  end
end

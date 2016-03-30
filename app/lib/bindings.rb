Pakyow::App.bindings do
  scope :thunk do
    binding :url do
      {
        href: bindable.url,
        content: bindable.url,
      }
    end
  end
end

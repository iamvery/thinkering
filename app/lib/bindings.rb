Pakyow::App.bindings do
  scope :form do
    restful :thunk
  end

  scope :thunk do
    binding :url do
      {
        href: bindable.url,
        content: bindable.url,
      }
    end
  end
end

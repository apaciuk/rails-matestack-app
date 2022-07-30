class Components::Card < Matestack::Ui::Component

  required :body
  optional :title
  optional :image

  def response
    div class: "card shadow-sm border-0 bg-light" do
      img path: context.image, class: "w-100" if context.image.present?
      div class: "card-body" do
        h5 context.title if context.title.present?
        paragraph context.body, class: "card-text"
      end
    end
  end

end
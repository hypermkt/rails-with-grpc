class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.all
    items_messages = items.map {|item| build_item_message(item)}

    send_data(::ItemsResponse.encode(::ItemsResponse.new(
      items: items_messages
    )))
  end

  private

  def build_item_message(item)
    ::ItemResponse.new(
      id: item.id,
      name: item.name
    )
  end
end

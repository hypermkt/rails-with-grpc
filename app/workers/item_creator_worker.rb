class ItemCreatorWorker
  include Sidekiq::Worker

  def perform(options = {})
    @item = Item.new(options)
    @item.save
  end
end
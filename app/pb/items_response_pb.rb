# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: items_response.proto

require 'google/protobuf'

require 'item_response_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("items_response.proto", :syntax => :proto3) do
    add_message "ItemsResponse" do
      repeated :items, :message, 1, "ItemResponse"
    end
  end
end

ItemsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("ItemsResponse").msgclass

namespace :protobuf do
  desc "generate protobuf files"
  task :generate do
    # refs: https://qiita.com/moonstruckdrops@github/items/ad467f3149e0154b5b61#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E7%94%9F%E6%88%90
    RUBY_OUT_DIR = "app/pb"
    Dir["#{Rails.root}/pb/**/*.proto"].each do |file_path|
      proto_file = file_path.gsub(Rails.root.to_s, '.')
      system("grpc_tools_ruby_protoc --ruby_out=#{Rails.root}/#{RUBY_OUT_DIR} --proto_path=./pb #{proto_file}")
    end
  end
end

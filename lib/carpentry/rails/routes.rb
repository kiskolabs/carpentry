module ActionDispatch::Routing
  class Mapper
    def mount_carpentry_at(mount_location)
      scope mount_location do
        root to: "carpentry/prototypes#serve", file_path: "index"
        match "/*file_path" => "carpentry/prototypes#serve", via: :get
      end
    end
  end
end

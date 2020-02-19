class ApiVersionConstraint
    def initialize(options)
        @version = options[:version]
        @default = options[:version]
    end

    def matches?(req)
        @default || req.headers['Accept'].include?("application/vnd.projetofase8.v#{@version}")
    end
end
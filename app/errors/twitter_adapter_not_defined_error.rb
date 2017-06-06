class TwitterAdapterNotDefinedError < StandardError
  def initialize(resource_type)
    super('You must set an Adapter to connect on Twitter')
  end
end

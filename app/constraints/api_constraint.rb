class ApiConstraint
  attr_reader :version

  def initialize options
    @version = options.fetch( :version )
  end

  # The Rails router will automatically trigger this method.
  # If it returns `true` it'll use the routes specified within
  # the scope. 
  def matches? request
    request
      .headers
      .fetch( :accept )
      .include?( "version=#{version}" )
  end
end
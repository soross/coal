
module Locomotive::Coal
  module Resources

    class Memberships < Base

      # for create, accept email address.

      alias :all :index

      
      include Concerns::Request

      def create(attributes = {})
        without_authentication do
          data = post('membership', membership: attributes)
          Resource.new(data)
        end
      end

      def update(attributes = {})
        data = put('membership', membership: attributes)
        Resource.new(data)
      end
    end

  end
end

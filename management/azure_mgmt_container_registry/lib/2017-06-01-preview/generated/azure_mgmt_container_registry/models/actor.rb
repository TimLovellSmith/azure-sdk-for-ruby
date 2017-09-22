# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerRegistry::Api_2017_06_01_preview
  module Models
    #
    # The agent that initiated the event. For most situations, this could be
    # from the authorization context of the request.
    #
    class Actor

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The subject or username associated with the request
      # context that generated the event.
      attr_accessor :name


      #
      # Mapper for Actor class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Actor',
          type: {
            name: 'Composite',
            class_name: 'Actor',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end

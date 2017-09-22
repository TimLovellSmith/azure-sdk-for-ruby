# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs::Api_2016_05_15
  module Models
    #
    # Parameters for creating multiple virtual machines as a single action.
    #
    class BulkCreationParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The number of virtual machine instances to create.
      attr_accessor :instance_count


      #
      # Mapper for BulkCreationParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BulkCreationParameters',
          type: {
            name: 'Composite',
            class_name: 'BulkCreationParameters',
            model_properties: {
              instance_count: {
                required: false,
                serialized_name: 'instanceCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end

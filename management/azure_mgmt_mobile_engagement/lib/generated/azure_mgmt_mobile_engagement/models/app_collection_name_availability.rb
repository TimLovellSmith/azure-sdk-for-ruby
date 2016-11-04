# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    class AppCollectionNameAvailability

      include MsRestAzure

      # @return [String] Name.
      attr_accessor :name

      # @return [Boolean] Available.
      attr_accessor :available

      # @return [String] UnavailabilityReason.
      attr_accessor :unavailability_reason


      #
      # Mapper for AppCollectionNameAvailability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AppCollectionNameAvailability',
          type: {
            name: 'Composite',
            class_name: 'AppCollectionNameAvailability',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              available: {
                required: false,
                serialized_name: 'available',
                type: {
                  name: 'Boolean'
                }
              },
              unavailability_reason: {
                required: false,
                serialized_name: 'unavailabilityReason',
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

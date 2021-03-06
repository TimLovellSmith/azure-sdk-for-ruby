# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Used to target devices based their network type.
    #
    class NetworkTypeCriterion < Criterion

      include MsRestAzure


      def initialize
        @type = "network-type"
      end

      attr_accessor :type

      # @return [String] The network type (Wifi, Mobile...).
      attr_accessor :name


      #
      # Mapper for NetworkTypeCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'network-type',
          type: {
            name: 'Composite',
            class_name: 'NetworkTypeCriterion',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
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

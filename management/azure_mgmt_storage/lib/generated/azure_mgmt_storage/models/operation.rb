# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Storage
  module Models
    #
    # Storage REST API operation definition.
    #
    class Operation

      include MsRestAzure

      # @return [String] Operation name: {provider}/{resource}/{operation}
      attr_accessor :name

      # @return [OperationDisplay] Display metadata associated with the
      # operation.
      attr_accessor :display

      # @return [String] The origin of operations.
      attr_accessor :origin

      # @return [ServiceSpecification] One property of operation, include
      # metric specifications.
      attr_accessor :service_specification


      #
      # Mapper for Operation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Operation',
          type: {
            name: 'Composite',
            class_name: 'Operation',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'OperationDisplay'
                }
              },
              origin: {
                required: false,
                serialized_name: 'origin',
                type: {
                  name: 'String'
                }
              },
              service_specification: {
                required: false,
                serialized_name: 'properties.serviceSpecification',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceSpecification'
                }
              }
            }
          }
        }
      end
    end
  end
end

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerInstance::Api_2017_08_01_preview
  module Models
    #
    # The environment variable to set within the container instance.
    #
    class EnvironmentVariable

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the environment variable.
      attr_accessor :name

      # @return [String] The value of the environment variable.
      attr_accessor :value


      #
      # Mapper for EnvironmentVariable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EnvironmentVariable',
          type: {
            name: 'Composite',
            class_name: 'EnvironmentVariable',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: true,
                serialized_name: 'value',
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

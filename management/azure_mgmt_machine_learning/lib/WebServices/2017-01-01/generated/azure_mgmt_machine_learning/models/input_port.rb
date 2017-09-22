# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning::WebServices::Api_2017_01_01
  module Models
    #
    # Asset input port
    #
    class InputPort

      include MsRestAzure

      include MsRest::JSONable
      # @return [InputPortType] Port data type. Possible values include:
      # 'Dataset'. Default value: 'Dataset' .
      attr_accessor :type


      #
      # Mapper for InputPort class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InputPort',
          type: {
            name: 'Composite',
            class_name: 'InputPort',
            model_properties: {
              type: {
                required: false,
                serialized_name: 'type',
                default_value: 'Dataset',
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

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # The response to a list database metrics request.
    #
    class MetricListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<Metric>] The list of metrics for the database.
      attr_accessor :value


      #
      # Mapper for MetricListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricListResult',
          type: {
            name: 'Composite',
            class_name: 'MetricListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MetricElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Metric'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end

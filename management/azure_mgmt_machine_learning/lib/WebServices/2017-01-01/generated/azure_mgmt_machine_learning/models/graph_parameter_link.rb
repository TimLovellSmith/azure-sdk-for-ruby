# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning::WebServices::Api_2017_01_01
  module Models
    #
    # Association link for a graph global parameter to a node in the graph.
    #
    class GraphParameterLink

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The graph node's identifier
      attr_accessor :node_id

      # @return [String] The identifier of the node parameter that the global
      # parameter maps to.
      attr_accessor :parameter_key


      #
      # Mapper for GraphParameterLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GraphParameterLink',
          type: {
            name: 'Composite',
            class_name: 'GraphParameterLink',
            model_properties: {
              node_id: {
                required: true,
                serialized_name: 'nodeId',
                type: {
                  name: 'String'
                }
              },
              parameter_key: {
                required: true,
                serialized_name: 'parameterKey',
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

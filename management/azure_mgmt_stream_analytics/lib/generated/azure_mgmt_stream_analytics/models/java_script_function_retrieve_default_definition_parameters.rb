# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # The parameters needed to retrieve the default function definition for a
    # JavaScript function.
    #
    class JavaScriptFunctionRetrieveDefaultDefinitionParameters < FunctionRetrieveDefaultDefinitionParameters

      include MsRestAzure


      def initialize
        @bindingType = "Microsoft.StreamAnalytics/JavascriptUdf"
      end

      attr_accessor :bindingType

      # @return [String] The JavaScript code containing a single function
      # definition. For example: 'function (x, y) { return x + y; }'.
      attr_accessor :script

      # @return [UdfType] The function type. Possible values include: 'Scalar'
      attr_accessor :udf_type


      #
      # Mapper for JavaScriptFunctionRetrieveDefaultDefinitionParameters class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.StreamAnalytics/JavascriptUdf',
          type: {
            name: 'Composite',
            class_name: 'JavaScriptFunctionRetrieveDefaultDefinitionParameters',
            model_properties: {
              bindingType: {
                required: true,
                serialized_name: 'bindingType',
                type: {
                  name: 'String'
                }
              },
              script: {
                required: false,
                serialized_name: 'bindingRetrievalProperties.script',
                type: {
                  name: 'String'
                }
              },
              udf_type: {
                required: false,
                serialized_name: 'bindingRetrievalProperties.udfType',
                type: {
                  name: 'Enum',
                  module: 'UdfType'
                }
              }
            }
          }
        }
      end
    end
  end
end

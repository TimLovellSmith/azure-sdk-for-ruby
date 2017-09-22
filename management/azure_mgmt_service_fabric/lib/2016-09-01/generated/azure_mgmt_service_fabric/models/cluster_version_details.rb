# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceFabric::Api_2016_09_01
  module Models
    #
    # The detail of the ServiceFabric runtime version result
    #
    class ClusterVersionDetails

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The ServiceFabric runtime version of the cluster
      attr_accessor :code_version

      # @return [String] The date of expiry of support of the version
      attr_accessor :support_expiry_utc

      # @return [Enum] Cluster operating system. Possible values include:
      # 'Windows', 'Linux'
      attr_accessor :environment


      #
      # Mapper for ClusterVersionDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ClusterVersionDetails',
          type: {
            name: 'Composite',
            class_name: 'ClusterVersionDetails',
            model_properties: {
              code_version: {
                required: false,
                serialized_name: 'codeVersion',
                type: {
                  name: 'String'
                }
              },
              support_expiry_utc: {
                required: false,
                serialized_name: 'supportExpiryUtc',
                type: {
                  name: 'String'
                }
              },
              environment: {
                required: false,
                serialized_name: 'environment',
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

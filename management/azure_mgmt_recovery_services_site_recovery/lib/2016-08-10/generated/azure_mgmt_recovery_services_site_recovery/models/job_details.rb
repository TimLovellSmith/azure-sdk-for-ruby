# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Job details based on specific job type.
    #
    class JobDetails

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["AsrJobDetails"] = "AsrJobDetails"
      @@discriminatorMap["TestFailoverJobDetails"] = "TestFailoverJobDetails"
      @@discriminatorMap["FailoverJobDetails"] = "FailoverJobDetails"
      @@discriminatorMap["ExportJobDetails"] = "ExportJobDetails"
      @@discriminatorMap["SwitchProtectionJobDetails"] = "SwitchProtectionJobDetails"

      def initialize
        @instanceType = "JobDetails"
      end

      attr_accessor :instanceType

      # @return [Hash{String => String}] The affected object properties like
      # source server, source cloud, target server, target cloud etc. based on
      # the workflow object details.
      attr_accessor :affected_object_details


      #
      # Mapper for JobDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobDetails',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'JobDetails',
            class_name: 'JobDetails',
            model_properties: {
              affected_object_details: {
                required: false,
                serialized_name: 'affectedObjectDetails',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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

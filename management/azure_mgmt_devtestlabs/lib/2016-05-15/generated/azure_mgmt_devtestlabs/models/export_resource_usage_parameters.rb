# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs::Api_2016_05_15
  module Models
    #
    # The parameters of the export operation.
    #
    class ExportResourceUsageParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The blob storage absolute sas uri with write
      # permission to the container which the usage data needs to be uploaded
      # to.
      attr_accessor :blob_storage_absolute_sas_uri

      # @return [DateTime] The start time of the usage. If not provided, usage
      # will be reported since the beginning of data collection.
      attr_accessor :usage_start_date


      #
      # Mapper for ExportResourceUsageParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExportResourceUsageParameters',
          type: {
            name: 'Composite',
            class_name: 'ExportResourceUsageParameters',
            model_properties: {
              blob_storage_absolute_sas_uri: {
                required: false,
                serialized_name: 'blobStorageAbsoluteSasUri',
                type: {
                  name: 'String'
                }
              },
              usage_start_date: {
                required: false,
                serialized_name: 'usageStartDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end

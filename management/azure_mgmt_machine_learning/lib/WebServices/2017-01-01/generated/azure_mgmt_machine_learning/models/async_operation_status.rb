# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning::WebServices::Api_2017_01_01
  module Models
    #
    # Azure async operation status.
    #
    class AsyncOperationStatus

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Async operation id.
      attr_accessor :id

      # @return [String] Async operation name.
      attr_accessor :name

      # @return [ProvisioningState] Read Only: The provisioning state of the
      # web service. Valid values are Unknown, Provisioning, Succeeded, and
      # Failed. Possible values include: 'Unknown', 'Provisioning',
      # 'Succeeded', 'Failed'
      attr_accessor :provisioning_state

      # @return [DateTime] The date time that the async operation started.
      attr_accessor :start_time

      # @return [DateTime] The date time that the async operation finished.
      attr_accessor :end_time

      # @return [Float] Async operation progress.
      attr_accessor :percent_complete

      # @return [AsyncOperationErrorInfo] If the async operation fails, this
      # structure contains the error details.
      attr_accessor :error_info


      #
      # Mapper for AsyncOperationStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AsyncOperationStatus',
          type: {
            name: 'Composite',
            class_name: 'AsyncOperationStatus',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
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
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              percent_complete: {
                required: false,
                serialized_name: 'percentComplete',
                type: {
                  name: 'Double'
                }
              },
              error_info: {
                required: false,
                serialized_name: 'errorInfo',
                type: {
                  name: 'Composite',
                  class_name: 'AsyncOperationErrorInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end

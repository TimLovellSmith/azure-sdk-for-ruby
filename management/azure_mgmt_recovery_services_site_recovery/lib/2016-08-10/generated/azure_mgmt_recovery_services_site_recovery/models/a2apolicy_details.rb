# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # A2A specific policy details.
    #
    class A2APolicyDetails < PolicyProviderSpecificDetails

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "A2A"
      end

      attr_accessor :instanceType

      # @return [Integer] The recovery point threshold in minutes.
      attr_accessor :recovery_point_threshold_in_minutes

      # @return [Integer] The duration in minutes until which the recovery
      # points need to be stored.
      attr_accessor :recovery_point_history

      # @return [Integer] The app consistent snapshot frequency in minutes.
      attr_accessor :app_consistent_frequency_in_minutes

      # @return [String] A value indicating whether multi-VM sync has to be
      # enabled.
      attr_accessor :multi_vm_sync_status

      # @return [Integer] The crash consistent snapshot frequency in minutes.
      attr_accessor :crash_consistent_frequency_in_minutes


      #
      # Mapper for A2APolicyDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'A2A',
          type: {
            name: 'Composite',
            class_name: 'A2APolicyDetails',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_threshold_in_minutes: {
                required: false,
                serialized_name: 'recoveryPointThresholdInMinutes',
                type: {
                  name: 'Number'
                }
              },
              recovery_point_history: {
                required: false,
                serialized_name: 'recoveryPointHistory',
                type: {
                  name: 'Number'
                }
              },
              app_consistent_frequency_in_minutes: {
                required: false,
                serialized_name: 'appConsistentFrequencyInMinutes',
                type: {
                  name: 'Number'
                }
              },
              multi_vm_sync_status: {
                required: false,
                serialized_name: 'multiVmSyncStatus',
                type: {
                  name: 'String'
                }
              },
              crash_consistent_frequency_in_minutes: {
                required: false,
                serialized_name: 'crashConsistentFrequencyInMinutes',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end

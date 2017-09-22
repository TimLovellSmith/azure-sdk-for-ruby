# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic::Api_2016_06_01
  module Models
    #
    # The workflow trigger history filter.
    #
    class WorkflowTriggerHistoryFilter

      include MsRestAzure

      include MsRest::JSONable
      # @return [WorkflowStatus] The status of workflow trigger history.
      # Possible values include: 'NotSpecified', 'Paused', 'Running',
      # 'Waiting', 'Succeeded', 'Skipped', 'Suspended', 'Cancelled', 'Failed',
      # 'Faulted', 'TimedOut', 'Aborted', 'Ignored'
      attr_accessor :status


      #
      # Mapper for WorkflowTriggerHistoryFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkflowTriggerHistoryFilter',
          type: {
            name: 'Composite',
            class_name: 'WorkflowTriggerHistoryFilter',
            model_properties: {
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'WorkflowStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end

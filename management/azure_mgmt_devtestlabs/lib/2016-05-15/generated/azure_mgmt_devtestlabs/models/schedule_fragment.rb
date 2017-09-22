# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs::Api_2016_05_15
  module Models
    #
    # A schedule.
    #
    class ScheduleFragment < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [EnableStatus] The status of the schedule (i.e. Enabled,
      # Disabled). Possible values include: 'Enabled', 'Disabled'
      attr_accessor :status

      # @return [String] The task type of the schedule (e.g.
      # LabVmsShutdownTask, LabVmAutoStart).
      attr_accessor :task_type

      # @return [WeekDetailsFragment] If the schedule will occur only some days
      # of the week, specify the weekly recurrence.
      attr_accessor :weekly_recurrence

      # @return [DayDetailsFragment] If the schedule will occur once each day
      # of the week, specify the daily recurrence.
      attr_accessor :daily_recurrence

      # @return [HourDetailsFragment] If the schedule will occur multiple times
      # a day, specify the hourly recurrence.
      attr_accessor :hourly_recurrence

      # @return [String] The time zone ID (e.g. Pacific Standard time).
      attr_accessor :time_zone_id

      # @return [NotificationSettingsFragment] Notification settings.
      attr_accessor :notification_settings

      # @return [String] The resource ID to which the schedule belongs
      attr_accessor :target_resource_id

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for ScheduleFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ScheduleFragment',
          type: {
            name: 'Composite',
            class_name: 'ScheduleFragment',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
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
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              task_type: {
                required: false,
                serialized_name: 'properties.taskType',
                type: {
                  name: 'String'
                }
              },
              weekly_recurrence: {
                required: false,
                serialized_name: 'properties.weeklyRecurrence',
                type: {
                  name: 'Composite',
                  class_name: 'WeekDetailsFragment'
                }
              },
              daily_recurrence: {
                required: false,
                serialized_name: 'properties.dailyRecurrence',
                type: {
                  name: 'Composite',
                  class_name: 'DayDetailsFragment'
                }
              },
              hourly_recurrence: {
                required: false,
                serialized_name: 'properties.hourlyRecurrence',
                type: {
                  name: 'Composite',
                  class_name: 'HourDetailsFragment'
                }
              },
              time_zone_id: {
                required: false,
                serialized_name: 'properties.timeZoneId',
                type: {
                  name: 'String'
                }
              },
              notification_settings: {
                required: false,
                serialized_name: 'properties.notificationSettings',
                type: {
                  name: 'Composite',
                  class_name: 'NotificationSettingsFragment'
                }
              },
              target_resource_id: {
                required: false,
                serialized_name: 'properties.targetResourceId',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
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

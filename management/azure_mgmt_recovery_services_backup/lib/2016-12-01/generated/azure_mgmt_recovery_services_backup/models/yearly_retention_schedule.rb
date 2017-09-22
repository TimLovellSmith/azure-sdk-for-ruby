# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_12_01
  module Models
    #
    # Yearly retention schedule.
    #
    class YearlyRetentionSchedule

      include MsRestAzure

      include MsRest::JSONable
      # @return [RetentionScheduleFormat] Retention schedule format for yearly
      # retention policy. Possible values include: 'Invalid', 'Daily', 'Weekly'
      attr_accessor :retention_schedule_format_type

      # @return [Array<MonthOfYear>] List of months of year of yearly retention
      # policy.
      attr_accessor :months_of_year

      # @return [DailyRetentionFormat] Daily retention format for yearly
      # retention policy.
      attr_accessor :retention_schedule_daily

      # @return [WeeklyRetentionFormat] Weekly retention format for yearly
      # retention policy.
      attr_accessor :retention_schedule_weekly

      # @return [Array<DateTime>] Retention times of retention policy.
      attr_accessor :retention_times

      # @return [RetentionDuration] Retention duration of retention Policy.
      attr_accessor :retention_duration


      #
      # Mapper for YearlyRetentionSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'YearlyRetentionSchedule',
          type: {
            name: 'Composite',
            class_name: 'YearlyRetentionSchedule',
            model_properties: {
              retention_schedule_format_type: {
                required: false,
                serialized_name: 'retentionScheduleFormatType',
                type: {
                  name: 'String'
                }
              },
              months_of_year: {
                required: false,
                serialized_name: 'monthsOfYear',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MonthOfYearElementType',
                      type: {
                        name: 'Enum',
                        module: 'MonthOfYear'
                      }
                  }
                }
              },
              retention_schedule_daily: {
                required: false,
                serialized_name: 'retentionScheduleDaily',
                type: {
                  name: 'Composite',
                  class_name: 'DailyRetentionFormat'
                }
              },
              retention_schedule_weekly: {
                required: false,
                serialized_name: 'retentionScheduleWeekly',
                type: {
                  name: 'Composite',
                  class_name: 'WeeklyRetentionFormat'
                }
              },
              retention_times: {
                required: false,
                serialized_name: 'retentionTimes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DateTimeElementType',
                      type: {
                        name: 'DateTime'
                      }
                  }
                }
              },
              retention_duration: {
                required: false,
                serialized_name: 'retentionDuration',
                type: {
                  name: 'Composite',
                  class_name: 'RetentionDuration'
                }
              }
            }
          }
        }
      end
    end
  end
end

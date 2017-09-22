# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2016-07-01/generated/azure_mgmt_resources/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Resources::Api_2016_07_01
  autoload :Deployments,                                        '2016-07-01/generated/azure_mgmt_resources/deployments.rb'
  autoload :Providers,                                          '2016-07-01/generated/azure_mgmt_resources/providers.rb'
  autoload :ResourceGroups,                                     '2016-07-01/generated/azure_mgmt_resources/resource_groups.rb'
  autoload :Resources,                                          '2016-07-01/generated/azure_mgmt_resources/resources.rb'
  autoload :Tags,                                               '2016-07-01/generated/azure_mgmt_resources/tags.rb'
  autoload :DeploymentOperations,                               '2016-07-01/generated/azure_mgmt_resources/deployment_operations.rb'
  autoload :ResourceManagementClient,                           '2016-07-01/generated/azure_mgmt_resources/resource_management_client.rb'

  module Models
    autoload :Sku,                                                '2016-07-01/generated/azure_mgmt_resources/models/sku.rb'
    autoload :DeploymentExtendedFilter,                           '2016-07-01/generated/azure_mgmt_resources/models/deployment_extended_filter.rb'
    autoload :Identity,                                           '2016-07-01/generated/azure_mgmt_resources/models/identity.rb'
    autoload :ResourceGroupFilter,                                '2016-07-01/generated/azure_mgmt_resources/models/resource_group_filter.rb'
    autoload :TemplateLink,                                       '2016-07-01/generated/azure_mgmt_resources/models/template_link.rb'
    autoload :DebugSetting,                                       '2016-07-01/generated/azure_mgmt_resources/models/debug_setting.rb'
    autoload :ResourceListResult,                                 '2016-07-01/generated/azure_mgmt_resources/models/resource_list_result.rb'
    autoload :Deployment,                                         '2016-07-01/generated/azure_mgmt_resources/models/deployment.rb'
    autoload :ResourceGroupProperties,                            '2016-07-01/generated/azure_mgmt_resources/models/resource_group_properties.rb'
    autoload :ResourceManagementErrorWithDetails,                 '2016-07-01/generated/azure_mgmt_resources/models/resource_management_error_with_details.rb'
    autoload :ResourceGroup,                                      '2016-07-01/generated/azure_mgmt_resources/models/resource_group.rb'
    autoload :AliasType,                                          '2016-07-01/generated/azure_mgmt_resources/models/alias_type.rb'
    autoload :ResourceGroupListResult,                            '2016-07-01/generated/azure_mgmt_resources/models/resource_group_list_result.rb'
    autoload :Provider,                                           '2016-07-01/generated/azure_mgmt_resources/models/provider.rb'
    autoload :ResourcesMoveInfo,                                  '2016-07-01/generated/azure_mgmt_resources/models/resources_move_info.rb'
    autoload :Dependency,                                         '2016-07-01/generated/azure_mgmt_resources/models/dependency.rb'
    autoload :ExportTemplateRequest,                              '2016-07-01/generated/azure_mgmt_resources/models/export_template_request.rb'
    autoload :DeploymentValidateResult,                           '2016-07-01/generated/azure_mgmt_resources/models/deployment_validate_result.rb'
    autoload :TagCount,                                           '2016-07-01/generated/azure_mgmt_resources/models/tag_count.rb'
    autoload :DeploymentListResult,                               '2016-07-01/generated/azure_mgmt_resources/models/deployment_list_result.rb'
    autoload :TagValue,                                           '2016-07-01/generated/azure_mgmt_resources/models/tag_value.rb'
    autoload :Plan,                                               '2016-07-01/generated/azure_mgmt_resources/models/plan.rb'
    autoload :TagDetails,                                         '2016-07-01/generated/azure_mgmt_resources/models/tag_details.rb'
    autoload :ParametersLink,                                     '2016-07-01/generated/azure_mgmt_resources/models/parameters_link.rb'
    autoload :TagsListResult,                                     '2016-07-01/generated/azure_mgmt_resources/models/tags_list_result.rb'
    autoload :DeploymentExportResult,                             '2016-07-01/generated/azure_mgmt_resources/models/deployment_export_result.rb'
    autoload :TargetResource,                                     '2016-07-01/generated/azure_mgmt_resources/models/target_resource.rb'
    autoload :ProviderResourceType,                               '2016-07-01/generated/azure_mgmt_resources/models/provider_resource_type.rb'
    autoload :HttpMessage,                                        '2016-07-01/generated/azure_mgmt_resources/models/http_message.rb'
    autoload :DeploymentPropertiesExtended,                       '2016-07-01/generated/azure_mgmt_resources/models/deployment_properties_extended.rb'
    autoload :DeploymentOperationProperties,                      '2016-07-01/generated/azure_mgmt_resources/models/deployment_operation_properties.rb'
    autoload :ProviderListResult,                                 '2016-07-01/generated/azure_mgmt_resources/models/provider_list_result.rb'
    autoload :DeploymentOperation,                                '2016-07-01/generated/azure_mgmt_resources/models/deployment_operation.rb'
    autoload :DeploymentProperties,                               '2016-07-01/generated/azure_mgmt_resources/models/deployment_properties.rb'
    autoload :DeploymentOperationsListResult,                     '2016-07-01/generated/azure_mgmt_resources/models/deployment_operations_list_result.rb'
    autoload :BasicDependency,                                    '2016-07-01/generated/azure_mgmt_resources/models/basic_dependency.rb'
    autoload :ResourceProviderOperationDisplayProperties,         '2016-07-01/generated/azure_mgmt_resources/models/resource_provider_operation_display_properties.rb'
    autoload :GenericResourceFilter,                              '2016-07-01/generated/azure_mgmt_resources/models/generic_resource_filter.rb'
    autoload :DeploymentExtended,                                 '2016-07-01/generated/azure_mgmt_resources/models/deployment_extended.rb'
    autoload :AliasPathType,                                      '2016-07-01/generated/azure_mgmt_resources/models/alias_path_type.rb'
    autoload :ResourceGroupExportResult,                          '2016-07-01/generated/azure_mgmt_resources/models/resource_group_export_result.rb'
    autoload :GenericResource,                                    '2016-07-01/generated/azure_mgmt_resources/models/generic_resource.rb'
    autoload :DeploymentMode,                                     '2016-07-01/generated/azure_mgmt_resources/models/deployment_mode.rb'
    autoload :ResourceIdentityType,                               '2016-07-01/generated/azure_mgmt_resources/models/resource_identity_type.rb'
  end
end

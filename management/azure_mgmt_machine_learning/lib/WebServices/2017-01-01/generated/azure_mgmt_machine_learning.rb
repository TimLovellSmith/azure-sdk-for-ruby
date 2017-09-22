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
require '2017-01-01/generated/azure_mgmt_machine_learning/module_definition'
require 'ms_rest_azure'

module Azure::ARM::MachineLearning::WebServices::Api_2017_01_01
  autoload :WebServices,                                        '2017-01-01/generated/azure_mgmt_machine_learning/web_services.rb'
  autoload :AzureMLWebServicesManagementClient,                 '2017-01-01/generated/azure_mgmt_machine_learning/azure_mlweb_services_management_client.rb'

  module Models
    autoload :ModeValueInfo,                                      '2017-01-01/generated/azure_mgmt_machine_learning/models/mode_value_info.rb'
    autoload :ModuleAssetParameter,                               '2017-01-01/generated/azure_mgmt_machine_learning/models/module_asset_parameter.rb'
    autoload :WebServiceKeys,                                     '2017-01-01/generated/azure_mgmt_machine_learning/models/web_service_keys.rb'
    autoload :AssetItem,                                          '2017-01-01/generated/azure_mgmt_machine_learning/models/asset_item.rb'
    autoload :DiagnosticsConfiguration,                           '2017-01-01/generated/azure_mgmt_machine_learning/models/diagnostics_configuration.rb'
    autoload :WebServiceParameter,                                '2017-01-01/generated/azure_mgmt_machine_learning/models/web_service_parameter.rb'
    autoload :MachineLearningWorkspace,                           '2017-01-01/generated/azure_mgmt_machine_learning/models/machine_learning_workspace.rb'
    autoload :WebServiceProperties,                               '2017-01-01/generated/azure_mgmt_machine_learning/models/web_service_properties.rb'
    autoload :ColumnSpecification,                                '2017-01-01/generated/azure_mgmt_machine_learning/models/column_specification.rb'
    autoload :TableSpecification,                                 '2017-01-01/generated/azure_mgmt_machine_learning/models/table_specification.rb'
    autoload :ServiceInputOutputSpecification,                    '2017-01-01/generated/azure_mgmt_machine_learning/models/service_input_output_specification.rb'
    autoload :BlobLocation,                                       '2017-01-01/generated/azure_mgmt_machine_learning/models/blob_location.rb'
    autoload :GraphNode,                                          '2017-01-01/generated/azure_mgmt_machine_learning/models/graph_node.rb'
    autoload :OutputPort,                                         '2017-01-01/generated/azure_mgmt_machine_learning/models/output_port.rb'
    autoload :GraphEdge,                                          '2017-01-01/generated/azure_mgmt_machine_learning/models/graph_edge.rb'
    autoload :RealtimeConfiguration,                              '2017-01-01/generated/azure_mgmt_machine_learning/models/realtime_configuration.rb'
    autoload :GraphParameterLink,                                 '2017-01-01/generated/azure_mgmt_machine_learning/models/graph_parameter_link.rb'
    autoload :CommitmentPlan,                                     '2017-01-01/generated/azure_mgmt_machine_learning/models/commitment_plan.rb'
    autoload :GraphParameter,                                     '2017-01-01/generated/azure_mgmt_machine_learning/models/graph_parameter.rb'
    autoload :InputPort,                                          '2017-01-01/generated/azure_mgmt_machine_learning/models/input_port.rb'
    autoload :GraphPackage,                                       '2017-01-01/generated/azure_mgmt_machine_learning/models/graph_package.rb'
    autoload :StorageAccount,                                     '2017-01-01/generated/azure_mgmt_machine_learning/models/storage_account.rb'
    autoload :AsyncOperationStatus,                               '2017-01-01/generated/azure_mgmt_machine_learning/models/async_operation_status.rb'
    autoload :PaginatedWebServicesList,                           '2017-01-01/generated/azure_mgmt_machine_learning/models/paginated_web_services_list.rb'
    autoload :ExampleRequest,                                     '2017-01-01/generated/azure_mgmt_machine_learning/models/example_request.rb'
    autoload :AsyncOperationErrorInfo,                            '2017-01-01/generated/azure_mgmt_machine_learning/models/async_operation_error_info.rb'
    autoload :WebService,                                         '2017-01-01/generated/azure_mgmt_machine_learning/models/web_service.rb'
    autoload :WebServicePropertiesForGraph,                       '2017-01-01/generated/azure_mgmt_machine_learning/models/web_service_properties_for_graph.rb'
    autoload :ProvisioningState,                                  '2017-01-01/generated/azure_mgmt_machine_learning/models/provisioning_state.rb'
    autoload :DiagnosticsLevel,                                   '2017-01-01/generated/azure_mgmt_machine_learning/models/diagnostics_level.rb'
    autoload :ColumnType,                                         '2017-01-01/generated/azure_mgmt_machine_learning/models/column_type.rb'
    autoload :ColumnFormat,                                       '2017-01-01/generated/azure_mgmt_machine_learning/models/column_format.rb'
    autoload :AssetType,                                          '2017-01-01/generated/azure_mgmt_machine_learning/models/asset_type.rb'
    autoload :InputPortType,                                      '2017-01-01/generated/azure_mgmt_machine_learning/models/input_port_type.rb'
    autoload :OutputPortType,                                     '2017-01-01/generated/azure_mgmt_machine_learning/models/output_port_type.rb'
    autoload :ParameterType,                                      '2017-01-01/generated/azure_mgmt_machine_learning/models/parameter_type.rb'
  end
end

# Global

variable "environment" {
  description = "Infrastructure environment"
  type        = string
}

# SignalFx module specific

variable "notifications" {
  description = "Notification recipients list for every detectors"
  type        = list(string)
}

variable "prefixes" {
  description = "Prefixes list to prepend between brackets on every monitors names before environment"
  type        = list(string)
  default     = []
}

variable "filter_custom_includes" {
  description = "List of tags to include when custom filtering is used"
  type        = list(string)
  default     = []
}

variable "filter_custom_excludes" {
  description = "List of tags to exclude when custom filtering is used"
  type        = list(string)
  default     = []
}

variable "detectors_disabled" {
  description = "Disable all detectors in this module"
  type        = bool
  default     = false
}

# Azure Iothubs detectors specific

variable "heartbeat_disabled" {
  description = "Disable all alerting rules for heartbeat detector"
  type        = bool
  default     = null
}

variable "heartbeat_notifications" {
  description = "Notification recipients list for every alerting rules of heartbeat detector"
  type        = list(string)
  default     = []
}

variable "heartbeat_timeframe" {
  description = "Timeframe for system not reporting detector (i.e. \"10m\")"
  type        = string
  default     = "20m"
}

# jobs_failed detectors

variable "jobs_failed_disabled" {
  description = "Disable all alerting rules for jobs_failed detector"
  type        = bool
  default     = null
}

variable "jobs_failed_disabled_critical" {
  description = "Disable critical alerting rule for jobs_failed detector"
  type        = bool
  default     = null
}

variable "jobs_failed_disabled_warning" {
  description = "Disable warning alerting rule for jobs_failed detector"
  type        = bool
  default     = null
}

variable "jobs_failed_notifications" {
  description = "Notification recipients list for every alerting rules of jobs_failed detector"
  type        = list(string)
  default     = []
}

variable "jobs_failed_notifications_warning" {
  description = "Notification recipients list for warning alerting rule of jobs_failed detector"
  type        = list(string)
  default     = []
}

variable "jobs_failed_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of jobs_failed detector"
  type        = list(string)
  default     = []
}

variable "jobs_failed_aggregation_function" {
  description = "Aggregation function and group by for jobs_failed detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "jobs_failed_transformation_function" {
  description = "Transformation function for jobs_failed detector (mean, min, max)"
  type        = string
  default     = "min"
}

variable "jobs_failed_transformation_window" {
  description = "Transformation window for jobs_failed detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "jobs_failed_threshold_critical" {
  description = "Critical threshold for jobs_failed detector"
  type        = number
  default     = 90
}

variable "jobs_failed_threshold_warning" {
  description = "Warning threshold for jobs_failed detector"
  type        = number
  default     = 50
}

variable "jobs_failed_aperiodic_duration" {
  description = "Duration for the jobs_failed block"
  type        = string
  default     = "10m"
}

variable "jobs_failed_aperiodic_percentage" {
  description = "Percentage for the jobs_failed block"
  type        = number
  default     = 0.9
}

# list_jobs_failed detectors

variable "list_jobs_failed_disabled" {
  description = "Disable all alerting rules for list_jobs_failed detector"
  type        = bool
  default     = null
}

variable "list_jobs_failed_disabled_critical" {
  description = "Disable critical alerting rule for list_jobs_failed detector"
  type        = bool
  default     = null
}

variable "list_jobs_failed_disabled_warning" {
  description = "Disable warning alerting rule for list_jobs_failed detector"
  type        = bool
  default     = null
}

variable "list_jobs_failed_notifications" {
  description = "Notification recipients list for every alerting rules of list_jobs_failed detector"
  type        = list(string)
  default     = []
}

variable "list_jobs_failed_notifications_warning" {
  description = "Notification recipients list for warning alerting rule of list_jobs_failed detector"
  type        = list(string)
  default     = []
}

variable "list_jobs_failed_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of list_jobs_failed detector"
  type        = list(string)
  default     = []
}

variable "list_jobs_failed_aggregation_function" {
  description = "Aggregation function and group by for list_jobs_failed detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "list_jobs_failed_transformation_function" {
  description = "Transformation function for list_jobs_failed detector (mean, min, max)"
  type        = string
  default     = "min"
}

variable "list_jobs_failed_transformation_window" {
  description = "Transformation window for list_jobs_failed detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "list_jobs_failed_threshold_critical" {
  description = "Critical threshold for list_jobs_failed detector"
  type        = number
  default     = 90
}

variable "list_jobs_failed_threshold_warning" {
  description = "Warning threshold for list_jobs_failed detector"
  type        = number
  default     = 50
}

variable "list_jobs_failed_aperiodic_duration" {
  description = "Duration for the list_jobs_failed block"
  type        = string
  default     = "10m"
}

variable "list_jobs_failed_aperiodic_percentage" {
  description = "Percentage for the list_jobs_failed block"
  type        = number
  default     = 0.9
}

# query_jobs_failed detectors

variable "query_jobs_failed_disabled" {
  description = "Disable all alerting rules for query_jobs_failed detector"
  type        = bool
  default     = null
}

variable "query_jobs_failed_disabled_critical" {
  description = "Disable critical alerting rule for query_jobs_failed detector"
  type        = bool
  default     = null
}

variable "query_jobs_failed_disabled_warning" {
  description = "Disable warning alerting rule for query_jobs_failed detector"
  type        = bool
  default     = null
}

variable "query_jobs_failed_notifications" {
  description = "Notification recipients list for every alerting rules of query_jobs_failed detector"
  type        = list(string)
  default     = []
}

variable "query_jobs_failed_notifications_warning" {
  description = "Notification recipients list for warning alerting rule of query_jobs_failed detector"
  type        = list(string)
  default     = []
}

variable "query_jobs_failed_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of query_jobs_failed detector"
  type        = list(string)
  default     = []
}

variable "query_jobs_failed_aggregation_function" {
  description = "Aggregation function and group by for query_jobs_failed detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "query_jobs_failed_transformation_function" {
  description = "Transformation function for query_jobs_failed detector (mean, min, max)"
  type        = string
  default     = "min"
}

variable "query_jobs_failed_transformation_window" {
  description = "Transformation window for query_jobs_failed detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "query_jobs_failed_threshold_critical" {
  description = "Critical threshold for query_jobs_failed detector"
  type        = number
  default     = 90
}

variable "query_jobs_failed_threshold_warning" {
  description = "Warning threshold for query_jobs_failed detector"
  type        = number
  default     = 50
}

variable "query_jobs_failed_aperiodic_duration" {
  description = "Duration for the query_jobs_failed block"
  type        = string
  default     = "10m"
}

variable "query_jobs_failed_aperiodic_percentage" {
  description = "Percentage for the query_jobs_failed block"
  type        = number
  default     = 0.9
}

# total_devices detectors

variable "total_devices_disabled" {
  description = "Disable all alerting rules for total_devices detector"
  type        = bool
  default     = null
}

variable "total_devices_disabled_critical" {
  description = "Disable critical alerting rule for total_devices detector"
  type        = bool
  default     = null
}

variable "total_devices_notifications" {
  description = "Notification recipients list for every alerting rules of total_devices detector"
  type        = list(string)
  default     = []
}

variable "total_devices_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of total_devices detector"
  type        = list(string)
  default     = []
}

variable "total_devices_aggregation_function" {
  description = "Aggregation function and group by for total_devices detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "total_devices_transformation_function" {
  description = "Transformation function for total_devices detector (mean, min, max)"
  type        = string
  default     = "min"
}

variable "total_devices_transformation_window" {
  description = "Transformation window for total_devices detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "total_devices_threshold_critical" {
  description = "Critical threshold for total_devices detector"
  type        = number
  default     = 0
}

# c2d_methods_failed detectors

variable "c2d_methods_failed_disabled" {
  description = "Disable all alerting rules for c2d_methods_failed detector"
  type        = bool
  default     = null
}

variable "c2d_methods_failed_disabled_critical" {
  description = "Disable critical alerting rule for c2d_methods_failed detector"
  type        = bool
  default     = null
}

variable "c2d_methods_failed_disabled_warning" {
  description = "Disable warning alerting rule for c2d_methods_failed detector"
  type        = bool
  default     = null
}

variable "c2d_methods_failed_notifications" {
  description = "Notification recipients list for every alerting rules of c2d_methods_failed detector"
  type        = list(string)
  default     = []
}

variable "c2d_methods_failed_notifications_warning" {
  description = "Notification recipients list for warning alerting rule of c2d_methods_failed detector"
  type        = list(string)
  default     = []
}

variable "c2d_methods_failed_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of c2d_methods_failed detector"
  type        = list(string)
  default     = []
}

variable "c2d_methods_failed_aggregation_function" {
  description = "Aggregation function and group by for c2d_methods_failed detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "c2d_methods_failed_transformation_function" {
  description = "Transformation function for c2d_methods_failed detector (mean, min, max)"
  type        = string
  default     = "min"
}

variable "c2d_methods_failed_transformation_window" {
  description = "Transformation window for c2d_methods_failed detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "c2d_methods_failed_threshold_critical" {
  description = "Critical threshold for c2d_methods_failed detector"
  type        = number
  default     = 90
}

variable "c2d_methods_failed_threshold_warning" {
  description = "Warning threshold for c2d_methods_failed detector"
  type        = number
  default     = 50
}

variable "c2d_methods_failed_aperiodic_duration" {
  description = "Duration for the c2d_methods_failed block"
  type        = string
  default     = "10m"
}

variable "c2d_methods_failed_aperiodic_percentage" {
  description = "Percentage for the c2d_methods_failed block"
  type        = number
  default     = 0.9
}

# c2d_twin_read_failed detectors

variable "c2d_twin_read_failed_disabled" {
  description = "Disable all alerting rules for c2d_twin_read_failed detector"
  type        = bool
  default     = null
}

variable "c2d_twin_read_failed_disabled_critical" {
  description = "Disable critical alerting rule for c2d_twin_read_failed detector"
  type        = bool
  default     = null
}

variable "c2d_twin_read_failed_disabled_warning" {
  description = "Disable warning alerting rule for c2d_twin_read_failed detector"
  type        = bool
  default     = null
}

variable "c2d_twin_read_failed_notifications" {
  description = "Notification recipients list for every alerting rules of c2d_twin_read_failed detector"
  type        = list(string)
  default     = []
}

variable "c2d_twin_read_failed_notifications_warning" {
  description = "Notification recipients list for warning alerting rule of c2d_twin_read_failed detector"
  type        = list(string)
  default     = []
}

variable "c2d_twin_read_failed_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of c2d_twin_read_failed detector"
  type        = list(string)
  default     = []
}

variable "c2d_twin_read_failed_aggregation_function" {
  description = "Aggregation function and group by for c2d_twin_read_failed detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "c2d_twin_read_failed_transformation_function" {
  description = "Transformation function for c2d_twin_read_failed detector (mean, min, max)"
  type        = string
  default     = "min"
}

variable "c2d_twin_read_failed_transformation_window" {
  description = "Transformation window for c2d_twin_read_failed detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "c2d_twin_read_failed_threshold_critical" {
  description = "Critical threshold for c2d_twin_read_failed detector"
  type        = number
  default     = 90
}

variable "c2d_twin_read_failed_threshold_warning" {
  description = "Warning threshold for c2d_twin_read_failed detector"
  type        = number
  default     = 50
}

variable "c2d_twin_read_failed_aperiodic_duration" {
  description = "Duration for the c2d_twin_read_failed block"
  type        = string
  default     = "10m"
}

variable "c2d_twin_read_failed_aperiodic_percentage" {
  description = "Percentage for the c2d_twin_read_failed block"
  type        = number
  default     = 0.9
}

# c2d_twin_update_failed detectors

variable "c2d_twin_update_failed_disabled" {
  description = "Disable all alerting rules for c2d_twin_update_failed detector"
  type        = bool
  default     = null
}

variable "c2d_twin_update_failed_disabled_critical" {
  description = "Disable critical alerting rule for c2d_twin_update_failed detector"
  type        = bool
  default     = null
}

variable "c2d_twin_update_failed_disabled_warning" {
  description = "Disable warning alerting rule for c2d_twin_update_failed detector"
  type        = bool
  default     = null
}

variable "c2d_twin_update_failed_notifications" {
  description = "Notification recipients list for every alerting rules of c2d_twin_update_failed detector"
  type        = list(string)
  default     = []
}

variable "c2d_twin_update_failed_notifications_warning" {
  description = "Notification recipients list for warning alerting rule of c2d_twin_update_failed detector"
  type        = list(string)
  default     = []
}

variable "c2d_twin_update_failed_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of c2d_twin_update_failed detector"
  type        = list(string)
  default     = []
}

variable "c2d_twin_update_failed_aggregation_function" {
  description = "Aggregation function and group by for c2d_twin_update_failed detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "c2d_twin_update_failed_transformation_function" {
  description = "Transformation function for c2d_twin_update_failed detector (mean, min, max)"
  type        = string
  default     = "min"
}

variable "c2d_twin_update_failed_transformation_window" {
  description = "Transformation window for c2d_twin_update_failed detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "c2d_twin_update_failed_threshold_critical" {
  description = "Critical threshold for c2d_twin_update_failed detector"
  type        = number
  default     = 90
}

variable "c2d_twin_update_failed_threshold_warning" {
  description = "Warning threshold for c2d_twin_update_failed detector"
  type        = number
  default     = 50
}

variable "c2d_twin_update_failed_aperiodic_duration" {
  description = "Duration for the c2d_twin_update_failed block"
  type        = string
  default     = "10m"
}

variable "c2d_twin_update_failed_aperiodic_percentage" {
  description = "Percentage for the c2d_twin_update_failed block"
  type        = number
  default     = 0.9
}

# d2c_twin_read_failed detectors

variable "d2c_twin_read_failed_disabled" {
  description = "Disable all alerting rules for d2c_twin_read_failed detector"
  type        = bool
  default     = null
}

variable "d2c_twin_read_failed_disabled_critical" {
  description = "Disable critical alerting rule for d2c_twin_read_failed detector"
  type        = bool
  default     = null
}

variable "d2c_twin_read_failed_disabled_warning" {
  description = "Disable warning alerting rule for d2c_twin_read_failed detector"
  type        = bool
  default     = null
}

variable "d2c_twin_read_failed_notifications" {
  description = "Notification recipients list for every alerting rules of d2c_twin_read_failed detector"
  type        = list(string)
  default     = []
}

variable "d2c_twin_read_failed_notifications_warning" {
  description = "Notification recipients list for warning alerting rule of d2c_twin_read_failed detector"
  type        = list(string)
  default     = []
}

variable "d2c_twin_read_failed_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of d2c_twin_read_failed detector"
  type        = list(string)
  default     = []
}

variable "d2c_twin_read_failed_aggregation_function" {
  description = "Aggregation function and group by for d2c_twin_read_failed detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "d2c_twin_read_failed_transformation_function" {
  description = "Transformation function for d2c_twin_read_failed detector (mean, min, max)"
  type        = string
  default     = "min"
}

variable "d2c_twin_read_failed_transformation_window" {
  description = "Transformation window for d2c_twin_read_failed detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "d2c_twin_read_failed_threshold_critical" {
  description = "Critical threshold for d2c_twin_read_failed detector"
  type        = number
  default     = 90
}

variable "d2c_twin_read_failed_threshold_warning" {
  description = "Warning threshold for d2c_twin_read_failed detector"
  type        = number
  default     = 50
}

variable "d2c_twin_read_failed_aperiodic_duration" {
  description = "Duration for the d2c_twin_read_failed block"
  type        = string
  default     = "10m"
}

variable "d2c_twin_read_failed_aperiodic_percentage" {
  description = "Percentage for the d2c_twin_read_failed block"
  type        = number
  default     = 0.9
}

# d2c_twin_update_failed detectors

variable "d2c_twin_update_failed_disabled" {
  description = "Disable all alerting rules for d2c_twin_update_failed detector"
  type        = bool
  default     = null
}

variable "d2c_twin_update_failed_disabled_critical" {
  description = "Disable critical alerting rule for d2c_twin_update_failed detector"
  type        = bool
  default     = null
}

variable "d2c_twin_update_failed_disabled_warning" {
  description = "Disable warning alerting rule for d2c_twin_update_failed detector"
  type        = bool
  default     = null
}

variable "d2c_twin_update_failed_notifications" {
  description = "Notification recipients list for every alerting rules of d2c_twin_update_failed detector"
  type        = list(string)
  default     = []
}

variable "d2c_twin_update_failed_notifications_warning" {
  description = "Notification recipients list for warning alerting rule of d2c_twin_update_failed detector"
  type        = list(string)
  default     = []
}

variable "d2c_twin_update_failed_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of d2c_twin_update_failed detector"
  type        = list(string)
  default     = []
}

variable "d2c_twin_update_failed_aggregation_function" {
  description = "Aggregation function and group by for d2c_twin_update_failed detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "d2c_twin_update_failed_transformation_function" {
  description = "Transformation function for d2c_twin_update_failed detector (mean, min, max)"
  type        = string
  default     = "min"
}

variable "d2c_twin_update_failed_transformation_window" {
  description = "Transformation window for d2c_twin_update_failed detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "d2c_twin_update_failed_threshold_critical" {
  description = "Critical threshold for d2c_twin_update_failed detector"
  type        = number
  default     = 90
}

variable "d2c_twin_update_failed_threshold_warning" {
  description = "Warning threshold for d2c_twin_update_failed detector"
  type        = number
  default     = 50
}

variable "d2c_twin_update_failed_aperiodic_duration" {
  description = "Duration for the d2c_twin_update_failed block"
  type        = string
  default     = "10m"
}

variable "d2c_twin_update_failed_aperiodic_percentage" {
  description = "Percentage for the d2c_twin_update_failed block"
  type        = number
  default     = 0.9
}

# d2c_telemetry_egress_dropped detectors

variable "d2c_telemetry_egress_dropped_disabled" {
  description = "Disable all alerting rules for d2c_telemetry_egress_dropped detector"
  type        = bool
  default     = null
}

variable "d2c_telemetry_egress_dropped_disabled_critical" {
  description = "Disable critical alerting rule for d2c_telemetry_egress_dropped detector"
  type        = bool
  default     = null
}

variable "d2c_telemetry_egress_dropped_disabled_warning" {
  description = "Disable warning alerting rule for d2c_telemetry_egress_dropped detector"
  type        = bool
  default     = null
}

variable "d2c_telemetry_egress_dropped_notifications" {
  description = "Notification recipients list for every alerting rules of d2c_telemetry_egress_dropped detector"
  type        = list(string)
  default     = []
}

variable "d2c_telemetry_egress_dropped_notifications_warning" {
  description = "Notification recipients list for warning alerting rule of d2c_telemetry_egress_dropped detector"
  type        = list(string)
  default     = []
}

variable "d2c_telemetry_egress_dropped_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of d2c_telemetry_egress_dropped detector"
  type        = list(string)
  default     = []
}

variable "d2c_telemetry_egress_dropped_aggregation_function" {
  description = "Aggregation function and group by for d2c_telemetry_egress_dropped detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "d2c_telemetry_egress_dropped_transformation_function" {
  description = "Transformation function for d2c_telemetry_egress_dropped detector (mean, min, max)"
  type        = string
  default     = "min"
}

variable "d2c_telemetry_egress_dropped_transformation_window" {
  description = "Transformation window for d2c_telemetry_egress_dropped detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "d2c_telemetry_egress_dropped_threshold_critical" {
  description = "Critical threshold for d2c_telemetry_egress_dropped detector"
  type        = number
  default     = 90
}

variable "d2c_telemetry_egress_dropped_threshold_warning" {
  description = "Warning threshold for d2c_telemetry_egress_dropped detector"
  type        = number
  default     = 50
}

variable "d2c_telemetry_egress_dropped_aperiodic_duration" {
  description = "Duration for the d2c_telemetry_egress_dropped block"
  type        = string
  default     = "10m"
}

variable "d2c_telemetry_egress_dropped_aperiodic_percentage" {
  description = "Percentage for the d2c_telemetry_egress_dropped block"
  type        = number
  default     = 0.9
}

# d2c_telemetry_egress_orphaned detectors

variable "d2c_telemetry_egress_orphaned_disabled" {
  description = "Disable all alerting rules for d2c_telemetry_egress_orphaned detector"
  type        = bool
  default     = null
}

variable "d2c_telemetry_egress_orphaned_disabled_critical" {
  description = "Disable critical alerting rule for d2c_telemetry_egress_orphaned detector"
  type        = bool
  default     = null
}

variable "d2c_telemetry_egress_orphaned_disabled_warning" {
  description = "Disable warning alerting rule for d2c_telemetry_egress_orphaned detector"
  type        = bool
  default     = null
}

variable "d2c_telemetry_egress_orphaned_notifications" {
  description = "Notification recipients list for every alerting rules of d2c_telemetry_egress_orphaned detector"
  type        = list(string)
  default     = []
}

variable "d2c_telemetry_egress_orphaned_notifications_warning" {
  description = "Notification recipients list for warning alerting rule of d2c_telemetry_egress_orphaned detector"
  type        = list(string)
  default     = []
}

variable "d2c_telemetry_egress_orphaned_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of d2c_telemetry_egress_orphaned detector"
  type        = list(string)
  default     = []
}

variable "d2c_telemetry_egress_orphaned_aggregation_function" {
  description = "Aggregation function and group by for d2c_telemetry_egress_orphaned detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "d2c_telemetry_egress_orphaned_transformation_function" {
  description = "Transformation function for d2c_telemetry_egress_orphaned detector (mean, min, max)"
  type        = string
  default     = "min"
}

variable "d2c_telemetry_egress_orphaned_transformation_window" {
  description = "Transformation window for d2c_telemetry_egress_orphaned detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "d2c_telemetry_egress_orphaned_threshold_critical" {
  description = "Critical threshold for d2c_telemetry_egress_orphaned detector"
  type        = number
  default     = 90
}

variable "d2c_telemetry_egress_orphaned_threshold_warning" {
  description = "Warning threshold for d2c_telemetry_egress_orphaned detector"
  type        = number
  default     = 50
}

variable "d2c_telemetry_egress_orphaned_aperiodic_duration" {
  description = "Duration for the d2c_telemetry_egress_orphaned block"
  type        = string
  default     = "10m"
}

variable "d2c_telemetry_egress_orphaned_aperiodic_percentage" {
  description = "Percentage for the d2c_telemetry_egress_orphaned block"
  type        = number
  default     = 0.9
}

# d2c_telemetry_egress_invalid detectors

variable "d2c_telemetry_egress_invalid_disabled" {
  description = "Disable all alerting rules for d2c_telemetry_egress_invalid detector"
  type        = bool
  default     = null
}

variable "d2c_telemetry_egress_invalid_disabled_critical" {
  description = "Disable critical alerting rule for d2c_telemetry_egress_invalid detector"
  type        = bool
  default     = null
}

variable "d2c_telemetry_egress_invalid_disabled_warning" {
  description = "Disable warning alerting rule for d2c_telemetry_egress_invalid detector"
  type        = bool
  default     = null
}

variable "d2c_telemetry_egress_invalid_notifications" {
  description = "Notification recipients list for every alerting rules of d2c_telemetry_egress_invalid detector"
  type        = list(string)
  default     = []
}

variable "d2c_telemetry_egress_invalid_notifications_warning" {
  description = "Notification recipients list for warning alerting rule of d2c_telemetry_egress_invalid detector"
  type        = list(string)
  default     = []
}

variable "d2c_telemetry_egress_invalid_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of d2c_telemetry_egress_invalid detector"
  type        = list(string)
  default     = []
}

variable "d2c_telemetry_egress_invalid_aggregation_function" {
  description = "Aggregation function and group by for d2c_telemetry_egress_invalid detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "d2c_telemetry_egress_invalid_transformation_function" {
  description = "Transformation function for d2c_telemetry_egress_invalid detector (mean, min, max)"
  type        = string
  default     = "min"
}

variable "d2c_telemetry_egress_invalid_transformation_window" {
  description = "Transformation window for d2c_telemetry_egress_invalid detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "d2c_telemetry_egress_invalid_threshold_critical" {
  description = "Critical threshold for d2c_telemetry_egress_invalid detector"
  type        = number
  default     = 90
}

variable "d2c_telemetry_egress_invalid_threshold_warning" {
  description = "Warning threshold for d2c_telemetry_egress_invalid detector"
  type        = number
  default     = 50
}

variable "d2c_telemetry_egress_invalid_aperiodic_duration" {
  description = "Duration for the d2c_telemetry_egress_invalid block"
  type        = string
  default     = "10m"
}

variable "d2c_telemetry_egress_invalid_aperiodic_percentage" {
  description = "Percentage for the d2c_telemetry_egress_invalid block"
  type        = number
  default     = 0.9
}

# d2c_telemetry_ingress_nosent detectors

variable "d2c_telemetry_ingress_nosent_disabled" {
  description = "Disable all alerting rules for d2c_telemetry_ingress_nosent detector"
  type        = bool
  default     = null
}

variable "d2c_telemetry_ingress_nosent_disabled_critical" {
  description = "Disable critical alerting rule for d2c_telemetry_ingress_nosent detector"
  type        = bool
  default     = null
}

variable "d2c_telemetry_ingress_nosent_disabled_warning" {
  description = "Disable warning alerting rule for d2c_telemetry_ingress_nosent detector"
  type        = bool
  default     = null
}

variable "d2c_telemetry_ingress_nosent_notifications" {
  description = "Notification recipients list for every alerting rules of d2c_telemetry_ingress_nosent detector"
  type        = list(string)
  default     = []
}

variable "d2c_telemetry_ingress_nosent_notifications_warning" {
  description = "Notification recipients list for warning alerting rule of d2c_telemetry_ingress_nosent detector"
  type        = list(string)
  default     = []
}

variable "d2c_telemetry_ingress_nosent_notifications_critical" {
  description = "Notification recipients list for critical alerting rule of d2c_telemetry_ingress_nosent detector"
  type        = list(string)
  default     = []
}

variable "d2c_telemetry_ingress_nosent_aggregation_function" {
  description = "Aggregation function and group by for d2c_telemetry_ingress_nosent detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".mean(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "d2c_telemetry_ingress_nosent_transformation_function" {
  description = "Transformation function for d2c_telemetry_ingress_nosent detector (mean, min, max)"
  type        = string
  default     = "mean"
}

variable "d2c_telemetry_ingress_nosent_transformation_window" {
  description = "Transformation window for d2c_telemetry_ingress_nosent detector (i.e. 5m, 20m, 1h, 1d)"
  type        = string
  default     = "5m"
}

variable "d2c_telemetry_ingress_nosent_threshold_critical" {
  description = "Critical threshold for d2c_telemetry_ingress_nosent detector"
  type        = number
  default     = 20
}

variable "d2c_telemetry_ingress_nosent_threshold_warning" {
  description = "Warning threshold for d2c_telemetry_ingress_nosent detector"
  type        = number
  default     = 10
}

variable "d2c_telemetry_ingress_nosent_aperiodic_duration" {
  description = "Duration for the d2c_telemetry_ingress_nosent block"
  type        = string
  default     = "10m"
}

variable "d2c_telemetry_ingress_nosent_aperiodic_percentage" {
  description = "Percentage for the d2c_telemetry_ingress_nosent block"
  type        = number
  default     = 0.9
}
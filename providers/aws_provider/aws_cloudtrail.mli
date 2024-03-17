(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudtrail__advanced_event_selector__field_selector
type aws_cloudtrail__advanced_event_selector
type aws_cloudtrail__event_selector__data_resource
type aws_cloudtrail__event_selector
type aws_cloudtrail__insight_selector
type aws_cloudtrail

val aws_cloudtrail :
  ?cloud_watch_logs_group_arn:string ->
  ?cloud_watch_logs_role_arn:string ->
  ?enable_log_file_validation:bool ->
  ?enable_logging:bool ->
  ?include_global_service_events:bool ->
  ?is_multi_region_trail:bool ->
  ?is_organization_trail:bool ->
  ?kms_key_id:string ->
  ?s3_key_prefix:string ->
  ?sns_topic_name:string ->
  ?tags:(string * string) list ->
  name:string ->
  s3_bucket_name:string ->
  advanced_event_selector:
    aws_cloudtrail__advanced_event_selector list ->
  event_selector:aws_cloudtrail__event_selector list ->
  insight_selector:aws_cloudtrail__insight_selector list ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudtrail__advanced_event_selector__field_selector
type aws_cloudtrail__advanced_event_selector
type aws_cloudtrail__event_selector__data_resource
type aws_cloudtrail__event_selector
type aws_cloudtrail__insight_selector
type aws_cloudtrail

val aws_cloudtrail :
  ?cloud_watch_logs_group_arn:string prop ->
  ?cloud_watch_logs_role_arn:string prop ->
  ?enable_log_file_validation:bool prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?include_global_service_events:bool prop ->
  ?is_multi_region_trail:bool prop ->
  ?is_organization_trail:bool prop ->
  ?kms_key_id:string prop ->
  ?s3_key_prefix:string prop ->
  ?sns_topic_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  s3_bucket_name:string prop ->
  advanced_event_selector:
    aws_cloudtrail__advanced_event_selector list ->
  event_selector:aws_cloudtrail__event_selector list ->
  insight_selector:aws_cloudtrail__insight_selector list ->
  string ->
  unit

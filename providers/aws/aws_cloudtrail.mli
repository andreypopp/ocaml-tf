(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type advanced_event_selector__field_selector

val advanced_event_selector__field_selector :
  ?ends_with:string prop list ->
  ?equals:string prop list ->
  ?not_ends_with:string prop list ->
  ?not_equals:string prop list ->
  ?not_starts_with:string prop list ->
  ?starts_with:string prop list ->
  field:string prop ->
  unit ->
  advanced_event_selector__field_selector

type advanced_event_selector

val advanced_event_selector :
  ?name:string prop ->
  field_selector:advanced_event_selector__field_selector list ->
  unit ->
  advanced_event_selector

type event_selector__data_resource

val event_selector__data_resource :
  type_:string prop ->
  values:string prop list ->
  unit ->
  event_selector__data_resource

type event_selector

val event_selector :
  ?exclude_management_event_sources:string prop list ->
  ?include_management_events:bool prop ->
  ?read_write_type:string prop ->
  ?data_resource:event_selector__data_resource list ->
  unit ->
  event_selector

type insight_selector

val insight_selector :
  insight_type:string prop -> unit -> insight_selector

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?advanced_event_selector:advanced_event_selector list ->
  ?event_selector:event_selector list ->
  name:string prop ->
  s3_bucket_name:string prop ->
  insight_selector:insight_selector list ->
  unit ->
  aws_cloudtrail

val yojson_of_aws_cloudtrail : aws_cloudtrail -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cloud_watch_logs_group_arn : string prop;
  cloud_watch_logs_role_arn : string prop;
  enable_log_file_validation : bool prop;
  enable_logging : bool prop;
  home_region : string prop;
  id : string prop;
  include_global_service_events : bool prop;
  is_multi_region_trail : bool prop;
  is_organization_trail : bool prop;
  kms_key_id : string prop;
  name : string prop;
  s3_bucket_name : string prop;
  s3_key_prefix : string prop;
  sns_topic_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?advanced_event_selector:advanced_event_selector list ->
  ?event_selector:event_selector list ->
  name:string prop ->
  s3_bucket_name:string prop ->
  insight_selector:insight_selector list ->
  string ->
  t

val make :
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?advanced_event_selector:advanced_event_selector list ->
  ?event_selector:event_selector list ->
  name:string prop ->
  s3_bucket_name:string prop ->
  insight_selector:insight_selector list ->
  string ->
  t Tf_core.resource

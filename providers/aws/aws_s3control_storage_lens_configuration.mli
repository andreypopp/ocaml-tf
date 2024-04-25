(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type storage_lens_configuration__account_level__activity_metrics

val storage_lens_configuration__account_level__activity_metrics :
  ?enabled:bool prop ->
  unit ->
  storage_lens_configuration__account_level__activity_metrics

type storage_lens_configuration__account_level__advanced_cost_optimization_metrics

val storage_lens_configuration__account_level__advanced_cost_optimization_metrics :
  ?enabled:bool prop ->
  unit ->
  storage_lens_configuration__account_level__advanced_cost_optimization_metrics

type storage_lens_configuration__account_level__advanced_data_protection_metrics

val storage_lens_configuration__account_level__advanced_data_protection_metrics :
  ?enabled:bool prop ->
  unit ->
  storage_lens_configuration__account_level__advanced_data_protection_metrics

type storage_lens_configuration__account_level__bucket_level__activity_metrics

val storage_lens_configuration__account_level__bucket_level__activity_metrics :
  ?enabled:bool prop ->
  unit ->
  storage_lens_configuration__account_level__bucket_level__activity_metrics

type storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics

val storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics :
  ?enabled:bool prop ->
  unit ->
  storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics

type storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics

val storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics :
  ?enabled:bool prop ->
  unit ->
  storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics

type storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics

val storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics :
  ?enabled:bool prop ->
  unit ->
  storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics

type storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria

val storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria :
  ?delimiter:string prop ->
  ?max_depth:float prop ->
  ?min_storage_bytes_percentage:float prop ->
  unit ->
  storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria

type storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics

val storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics :
  ?enabled:bool prop ->
  ?selection_criteria:
    storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria
    list ->
  unit ->
  storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics

type storage_lens_configuration__account_level__bucket_level__prefix_level

val storage_lens_configuration__account_level__bucket_level__prefix_level :
  storage_metrics:
    storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics
    list ->
  unit ->
  storage_lens_configuration__account_level__bucket_level__prefix_level

type storage_lens_configuration__account_level__bucket_level

val storage_lens_configuration__account_level__bucket_level :
  ?activity_metrics:
    storage_lens_configuration__account_level__bucket_level__activity_metrics
    list ->
  ?advanced_cost_optimization_metrics:
    storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics
    list ->
  ?advanced_data_protection_metrics:
    storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics
    list ->
  ?detailed_status_code_metrics:
    storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics
    list ->
  ?prefix_level:
    storage_lens_configuration__account_level__bucket_level__prefix_level
    list ->
  unit ->
  storage_lens_configuration__account_level__bucket_level

type storage_lens_configuration__account_level__detailed_status_code_metrics

val storage_lens_configuration__account_level__detailed_status_code_metrics :
  ?enabled:bool prop ->
  unit ->
  storage_lens_configuration__account_level__detailed_status_code_metrics

type storage_lens_configuration__account_level

val storage_lens_configuration__account_level :
  ?activity_metrics:
    storage_lens_configuration__account_level__activity_metrics list ->
  ?advanced_cost_optimization_metrics:
    storage_lens_configuration__account_level__advanced_cost_optimization_metrics
    list ->
  ?advanced_data_protection_metrics:
    storage_lens_configuration__account_level__advanced_data_protection_metrics
    list ->
  ?detailed_status_code_metrics:
    storage_lens_configuration__account_level__detailed_status_code_metrics
    list ->
  bucket_level:
    storage_lens_configuration__account_level__bucket_level list ->
  unit ->
  storage_lens_configuration__account_level

type storage_lens_configuration__aws_org

val storage_lens_configuration__aws_org :
  arn:string prop -> unit -> storage_lens_configuration__aws_org

type storage_lens_configuration__data_export__cloud_watch_metrics

val storage_lens_configuration__data_export__cloud_watch_metrics :
  enabled:bool prop ->
  unit ->
  storage_lens_configuration__data_export__cloud_watch_metrics

type storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms

val storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms :
  key_id:string prop ->
  unit ->
  storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms

type storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3

val storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3 :
  unit ->
  storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3

type storage_lens_configuration__data_export__s3_bucket_destination__encryption

val storage_lens_configuration__data_export__s3_bucket_destination__encryption :
  ?sse_kms:
    storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms
    list ->
  ?sse_s3:
    storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3
    list ->
  unit ->
  storage_lens_configuration__data_export__s3_bucket_destination__encryption

type storage_lens_configuration__data_export__s3_bucket_destination

val storage_lens_configuration__data_export__s3_bucket_destination :
  ?prefix:string prop ->
  ?encryption:
    storage_lens_configuration__data_export__s3_bucket_destination__encryption
    list ->
  account_id:string prop ->
  arn:string prop ->
  format:string prop ->
  output_schema_version:string prop ->
  unit ->
  storage_lens_configuration__data_export__s3_bucket_destination

type storage_lens_configuration__data_export

val storage_lens_configuration__data_export :
  ?cloud_watch_metrics:
    storage_lens_configuration__data_export__cloud_watch_metrics list ->
  ?s3_bucket_destination:
    storage_lens_configuration__data_export__s3_bucket_destination
    list ->
  unit ->
  storage_lens_configuration__data_export

type storage_lens_configuration__exclude

val storage_lens_configuration__exclude :
  ?buckets:string prop list ->
  ?regions:string prop list ->
  unit ->
  storage_lens_configuration__exclude

type storage_lens_configuration__include

val storage_lens_configuration__include :
  ?buckets:string prop list ->
  ?regions:string prop list ->
  unit ->
  storage_lens_configuration__include

type storage_lens_configuration

val storage_lens_configuration :
  ?aws_org:storage_lens_configuration__aws_org list ->
  ?data_export:storage_lens_configuration__data_export list ->
  ?exclude:storage_lens_configuration__exclude list ->
  ?include_:storage_lens_configuration__include list ->
  enabled:bool prop ->
  account_level:storage_lens_configuration__account_level list ->
  unit ->
  storage_lens_configuration

type aws_s3control_storage_lens_configuration

val aws_s3control_storage_lens_configuration :
  ?account_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  config_id:string prop ->
  storage_lens_configuration:storage_lens_configuration list ->
  unit ->
  aws_s3control_storage_lens_configuration

val yojson_of_aws_s3control_storage_lens_configuration :
  aws_s3control_storage_lens_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  arn : string prop;
  config_id : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  config_id:string prop ->
  storage_lens_configuration:storage_lens_configuration list ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  config_id:string prop ->
  storage_lens_configuration:storage_lens_configuration list ->
  string ->
  t Tf_core.resource

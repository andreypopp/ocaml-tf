(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cur_report_definition

val aws_cur_report_definition :
  ?additional_artifacts:string prop list ->
  ?id:string prop ->
  ?refresh_closed_reports:bool prop ->
  ?report_versioning:string prop ->
  ?s3_prefix:string prop ->
  additional_schema_elements:string prop list ->
  compression:string prop ->
  format:string prop ->
  report_name:string prop ->
  s3_bucket:string prop ->
  s3_region:string prop ->
  time_unit:string prop ->
  unit ->
  aws_cur_report_definition

val yojson_of_aws_cur_report_definition :
  aws_cur_report_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  additional_artifacts : string list prop;
  additional_schema_elements : string list prop;
  arn : string prop;
  compression : string prop;
  format : string prop;
  id : string prop;
  refresh_closed_reports : bool prop;
  report_name : string prop;
  report_versioning : string prop;
  s3_bucket : string prop;
  s3_prefix : string prop;
  s3_region : string prop;
  time_unit : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_artifacts:string prop list ->
  ?id:string prop ->
  ?refresh_closed_reports:bool prop ->
  ?report_versioning:string prop ->
  ?s3_prefix:string prop ->
  additional_schema_elements:string prop list ->
  compression:string prop ->
  format:string prop ->
  report_name:string prop ->
  s3_bucket:string prop ->
  s3_region:string prop ->
  time_unit:string prop ->
  string ->
  t

val make :
  ?additional_artifacts:string prop list ->
  ?id:string prop ->
  ?refresh_closed_reports:bool prop ->
  ?report_versioning:string prop ->
  ?s3_prefix:string prop ->
  additional_schema_elements:string prop list ->
  compression:string prop ->
  format:string prop ->
  report_name:string prop ->
  s3_bucket:string prop ->
  s3_region:string prop ->
  time_unit:string prop ->
  string ->
  t Tf_core.resource

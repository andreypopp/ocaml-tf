(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cur_report_definition

val aws_cur_report_definition :
  ?additional_artifacts:string list ->
  ?id:string ->
  ?refresh_closed_reports:bool ->
  ?report_versioning:string ->
  ?s3_prefix:string ->
  additional_schema_elements:string list ->
  compression:string ->
  format:string ->
  report_name:string ->
  s3_bucket:string ->
  s3_region:string ->
  time_unit:string ->
  string ->
  unit

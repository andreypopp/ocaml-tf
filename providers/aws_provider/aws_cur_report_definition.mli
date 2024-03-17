(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  string ->
  unit

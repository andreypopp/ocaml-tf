(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codebuild_report_group__export_config__s3_destination
type aws_codebuild_report_group__export_config
type aws_codebuild_report_group

val aws_codebuild_report_group :
  ?delete_reports:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  type_:string ->
  export_config:aws_codebuild_report_group__export_config list ->
  string ->
  unit

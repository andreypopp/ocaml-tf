(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codebuild_report_group__export_config__s3_destination
type aws_codebuild_report_group__export_config
type aws_codebuild_report_group

type t = private {
  arn : string prop;
  created : string prop;
  delete_reports : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val aws_codebuild_report_group :
  ?delete_reports:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  type_:string prop ->
  export_config:aws_codebuild_report_group__export_config list ->
  string ->
  t

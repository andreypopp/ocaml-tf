(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type export_config__s3_destination

val export_config__s3_destination :
  ?encryption_disabled:bool prop ->
  ?packaging:string prop ->
  ?path:string prop ->
  bucket:string prop ->
  encryption_key:string prop ->
  unit ->
  export_config__s3_destination

type export_config

val export_config :
  type_:string prop ->
  s3_destination:export_config__s3_destination list ->
  unit ->
  export_config

type aws_codebuild_report_group

val aws_codebuild_report_group :
  ?delete_reports:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  type_:string prop ->
  export_config:export_config list ->
  unit ->
  aws_codebuild_report_group

val yojson_of_aws_codebuild_report_group :
  aws_codebuild_report_group -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?delete_reports:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  type_:string prop ->
  export_config:export_config list ->
  string ->
  t

val make :
  ?delete_reports:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  type_:string prop ->
  export_config:export_config list ->
  string ->
  t Tf_core.resource

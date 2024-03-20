(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type report_delivery_channel = {
  formats : string prop list;  (** formats *)
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_prefix : string prop;  (** s3_key_prefix *)
}

type report_setting = {
  accounts : string prop list;  (** accounts *)
  framework_arns : string prop list;  (** framework_arns *)
  number_of_frameworks : float prop;  (** number_of_frameworks *)
  organization_units : string prop list;  (** organization_units *)
  regions : string prop list;  (** regions *)
  report_template : string prop;  (** report_template *)
}

type aws_backup_report_plan

val aws_backup_report_plan :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_backup_report_plan

val yojson_of_aws_backup_report_plan : aws_backup_report_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  creation_time : string prop;
  deployment_status : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  report_delivery_channel : report_delivery_channel list prop;
  report_setting : report_setting list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource

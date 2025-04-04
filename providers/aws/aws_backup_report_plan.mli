(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type report_delivery_channel

val report_delivery_channel :
  ?formats:string prop list ->
  ?s3_key_prefix:string prop ->
  s3_bucket_name:string prop ->
  unit ->
  report_delivery_channel

type report_setting

val report_setting :
  ?accounts:string prop list ->
  ?framework_arns:string prop list ->
  ?number_of_frameworks:float prop ->
  ?organization_units:string prop list ->
  ?regions:string prop list ->
  report_template:string prop ->
  unit ->
  report_setting

type aws_backup_report_plan

val aws_backup_report_plan :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  report_delivery_channel:report_delivery_channel list ->
  report_setting:report_setting list ->
  unit ->
  aws_backup_report_plan

val yojson_of_aws_backup_report_plan : aws_backup_report_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  deployment_status : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  report_delivery_channel:report_delivery_channel list ->
  report_setting:report_setting list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  report_delivery_channel:report_delivery_channel list ->
  report_setting:report_setting list ->
  string ->
  t Tf_core.resource

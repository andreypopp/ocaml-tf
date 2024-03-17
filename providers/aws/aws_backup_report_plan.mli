(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_report_plan__report_delivery_channel
type aws_backup_report_plan__report_setting
type aws_backup_report_plan

type t = private {
  arn : string prop;
  creation_time : string prop;
  deployment_status : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_backup_report_plan :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  report_delivery_channel:
    aws_backup_report_plan__report_delivery_channel list ->
  report_setting:aws_backup_report_plan__report_setting list ->
  string ->
  t

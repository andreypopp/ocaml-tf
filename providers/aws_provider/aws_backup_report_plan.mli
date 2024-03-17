(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_report_plan__report_delivery_channel
type aws_backup_report_plan__report_setting
type aws_backup_report_plan

val aws_backup_report_plan :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  report_delivery_channel:
    aws_backup_report_plan__report_delivery_channel list ->
  report_setting:aws_backup_report_plan__report_setting list ->
  string ->
  unit

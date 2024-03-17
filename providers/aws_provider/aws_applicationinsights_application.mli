(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_applicationinsights_application

val aws_applicationinsights_application :
  ?auto_config_enabled:bool ->
  ?auto_create:bool ->
  ?cwe_monitor_enabled:bool ->
  ?grouping_type:string ->
  ?id:string ->
  ?ops_center_enabled:bool ->
  ?ops_item_sns_topic_arn:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  resource_group_name:string ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_applicationinsights_application

val aws_applicationinsights_application :
  ?auto_config_enabled:bool prop ->
  ?auto_create:bool prop ->
  ?cwe_monitor_enabled:bool prop ->
  ?grouping_type:string prop ->
  ?id:string prop ->
  ?ops_center_enabled:bool prop ->
  ?ops_item_sns_topic_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  resource_group_name:string prop ->
  string ->
  unit

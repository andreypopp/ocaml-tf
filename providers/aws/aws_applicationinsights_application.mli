(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_applicationinsights_application

val aws_applicationinsights_application :
  ?auto_config_enabled:bool prop ->
  ?auto_create:bool prop ->
  ?cwe_monitor_enabled:bool prop ->
  ?grouping_type:string prop ->
  ?id:string prop ->
  ?ops_center_enabled:bool prop ->
  ?ops_item_sns_topic_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  resource_group_name:string prop ->
  unit ->
  aws_applicationinsights_application

val yojson_of_aws_applicationinsights_application :
  aws_applicationinsights_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  auto_config_enabled : bool prop;
  auto_create : bool prop;
  cwe_monitor_enabled : bool prop;
  grouping_type : string prop;
  id : string prop;
  ops_center_enabled : bool prop;
  ops_item_sns_topic_arn : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_config_enabled:bool prop ->
  ?auto_create:bool prop ->
  ?cwe_monitor_enabled:bool prop ->
  ?grouping_type:string prop ->
  ?id:string prop ->
  ?ops_center_enabled:bool prop ->
  ?ops_item_sns_topic_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?auto_config_enabled:bool prop ->
  ?auto_create:bool prop ->
  ?cwe_monitor_enabled:bool prop ->
  ?grouping_type:string prop ->
  ?id:string prop ->
  ?ops_center_enabled:bool prop ->
  ?ops_item_sns_topic_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource

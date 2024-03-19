(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  resource_group_name:string prop ->
  unit ->
  aws_applicationinsights_application

val yojson_of_aws_applicationinsights_application :
  aws_applicationinsights_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  auto_config_enabled : bool prop;
  auto_create : bool prop;
  cwe_monitor_enabled : bool prop;
  grouping_type : string prop;
  id : string prop;
  ops_center_enabled : bool prop;
  ops_item_sns_topic_arn : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  resource_group_name:string prop ->
  string ->
  t

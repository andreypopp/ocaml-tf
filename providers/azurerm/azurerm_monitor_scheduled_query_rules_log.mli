(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type criteria__dimension

val criteria__dimension :
  ?operator:string prop ->
  name:string prop ->
  values:string prop list ->
  unit ->
  criteria__dimension

type criteria

val criteria :
  metric_name:string prop ->
  dimension:criteria__dimension list ->
  unit ->
  criteria

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_scheduled_query_rules_log

val azurerm_monitor_scheduled_query_rules_log :
  ?authorized_resource_ids:string prop list ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_source_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  criteria:criteria list ->
  unit ->
  azurerm_monitor_scheduled_query_rules_log

val yojson_of_azurerm_monitor_scheduled_query_rules_log :
  azurerm_monitor_scheduled_query_rules_log -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authorized_resource_ids : string list prop;
  data_source_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?authorized_resource_ids:string prop list ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_source_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  criteria:criteria list ->
  string ->
  t

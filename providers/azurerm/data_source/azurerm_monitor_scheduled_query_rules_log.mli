(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type criteria__dimension = {
  name : string prop;  (** name *)
  operator : string prop;  (** operator *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type criteria = {
  dimension : criteria__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  metric_name : string prop;  (** metric_name *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_monitor_scheduled_query_rules_log

val azurerm_monitor_scheduled_query_rules_log :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_monitor_scheduled_query_rules_log

val yojson_of_azurerm_monitor_scheduled_query_rules_log :
  azurerm_monitor_scheduled_query_rules_log -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authorized_resource_ids : string list prop;
  criteria : criteria list prop;
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
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource

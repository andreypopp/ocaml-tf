(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_data_factory_trigger_schedules

val azurerm_data_factory_trigger_schedules :
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  unit ->
  azurerm_data_factory_trigger_schedules

val yojson_of_azurerm_data_factory_trigger_schedules :
  azurerm_data_factory_trigger_schedules -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data_factory_id : string prop;
  id : string prop;
  items : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  string ->
  t Tf_core.resource

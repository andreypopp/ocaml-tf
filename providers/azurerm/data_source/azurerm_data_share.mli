(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type snapshot_schedule = {
  name : string prop;  (** name *)
  recurrence : string prop;  (** recurrence *)
  start_time : string prop;  (** start_time *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_data_share

val azurerm_data_share :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_share

val yojson_of_azurerm_data_share : azurerm_data_share -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  snapshot_schedule : snapshot_schedule list prop;
  terms : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type snapshot_schedule

val snapshot_schedule :
  name:string prop ->
  recurrence:string prop ->
  start_time:string prop ->
  unit ->
  snapshot_schedule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_share

val azurerm_data_share :
  ?description:string prop ->
  ?id:string prop ->
  ?terms:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  kind:string prop ->
  name:string prop ->
  snapshot_schedule:snapshot_schedule list ->
  unit ->
  azurerm_data_share

val yojson_of_azurerm_data_share : azurerm_data_share -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  terms : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?terms:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  kind:string prop ->
  name:string prop ->
  snapshot_schedule:snapshot_schedule list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?terms:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  kind:string prop ->
  name:string prop ->
  snapshot_schedule:snapshot_schedule list ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_orbital_contact

val azurerm_orbital_contact :
  ?id:string prop ->
  ?timeouts:timeouts ->
  contact_profile_id:string prop ->
  ground_station_name:string prop ->
  name:string prop ->
  reservation_end_time:string prop ->
  reservation_start_time:string prop ->
  spacecraft_id:string prop ->
  unit ->
  azurerm_orbital_contact

val yojson_of_azurerm_orbital_contact :
  azurerm_orbital_contact -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  contact_profile_id : string prop;
  ground_station_name : string prop;
  id : string prop;
  name : string prop;
  reservation_end_time : string prop;
  reservation_start_time : string prop;
  spacecraft_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  contact_profile_id:string prop ->
  ground_station_name:string prop ->
  name:string prop ->
  reservation_end_time:string prop ->
  reservation_start_time:string prop ->
  spacecraft_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  contact_profile_id:string prop ->
  ground_station_name:string prop ->
  name:string prop ->
  reservation_end_time:string prop ->
  reservation_start_time:string prop ->
  spacecraft_id:string prop ->
  string ->
  t Tf_core.resource

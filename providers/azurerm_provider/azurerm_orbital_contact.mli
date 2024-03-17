(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_orbital_contact__timeouts
type azurerm_orbital_contact

type t = private {
  contact_profile_id : string prop;
  ground_station_name : string prop;
  id : string prop;
  name : string prop;
  reservation_end_time : string prop;
  reservation_start_time : string prop;
  spacecraft_id : string prop;
}

val azurerm_orbital_contact :
  ?id:string prop ->
  ?timeouts:azurerm_orbital_contact__timeouts ->
  contact_profile_id:string prop ->
  ground_station_name:string prop ->
  name:string prop ->
  reservation_end_time:string prop ->
  reservation_start_time:string prop ->
  spacecraft_id:string prop ->
  string ->
  t

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_orbital_contact__timeouts
type azurerm_orbital_contact

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
  unit

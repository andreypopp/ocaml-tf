(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_orbital_contact__timeouts
type azurerm_orbital_contact

val azurerm_orbital_contact :
  ?timeouts:azurerm_orbital_contact__timeouts ->
  contact_profile_id:string ->
  ground_station_name:string ->
  name:string ->
  reservation_end_time:string ->
  reservation_start_time:string ->
  spacecraft_id:string ->
  string ->
  unit

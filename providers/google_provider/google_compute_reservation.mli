(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_reservation__share_settings__project_map
type google_compute_reservation__share_settings

type google_compute_reservation__specific_reservation__instance_properties__guest_accelerators

type google_compute_reservation__specific_reservation__instance_properties__local_ssds

type google_compute_reservation__specific_reservation__instance_properties

type google_compute_reservation__specific_reservation
type google_compute_reservation__timeouts
type google_compute_reservation

val google_compute_reservation :
  ?description:string ->
  ?id:string ->
  ?project:string ->
  ?specific_reservation_required:bool ->
  ?timeouts:google_compute_reservation__timeouts ->
  name:string ->
  zone:string ->
  share_settings:google_compute_reservation__share_settings list ->
  specific_reservation:
    google_compute_reservation__specific_reservation list ->
  string ->
  unit

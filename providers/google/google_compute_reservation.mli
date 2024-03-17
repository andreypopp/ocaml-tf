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

type t = private {
  commitment : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  specific_reservation_required : bool prop;
  status : string prop;
  zone : string prop;
}

val google_compute_reservation :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?specific_reservation_required:bool prop ->
  ?timeouts:google_compute_reservation__timeouts ->
  name:string prop ->
  zone:string prop ->
  share_settings:google_compute_reservation__share_settings list ->
  specific_reservation:
    google_compute_reservation__specific_reservation list ->
  string ->
  t

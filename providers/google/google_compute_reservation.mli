(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type share_settings__project_map

val share_settings__project_map :
  ?project_id:string prop ->
  id:string prop ->
  unit ->
  share_settings__project_map

type share_settings

val share_settings :
  ?share_type:string prop ->
  project_map:share_settings__project_map list ->
  unit ->
  share_settings

type specific_reservation__instance_properties__guest_accelerators

val specific_reservation__instance_properties__guest_accelerators :
  accelerator_count:float prop ->
  accelerator_type:string prop ->
  unit ->
  specific_reservation__instance_properties__guest_accelerators

type specific_reservation__instance_properties__local_ssds

val specific_reservation__instance_properties__local_ssds :
  ?interface:string prop ->
  disk_size_gb:float prop ->
  unit ->
  specific_reservation__instance_properties__local_ssds

type specific_reservation__instance_properties

val specific_reservation__instance_properties :
  ?min_cpu_platform:string prop ->
  ?guest_accelerators:
    specific_reservation__instance_properties__guest_accelerators
    list ->
  ?local_ssds:
    specific_reservation__instance_properties__local_ssds list ->
  machine_type:string prop ->
  unit ->
  specific_reservation__instance_properties

type specific_reservation

val specific_reservation :
  count:float prop ->
  instance_properties:specific_reservation__instance_properties list ->
  unit ->
  specific_reservation

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_reservation

val google_compute_reservation :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?specific_reservation_required:bool prop ->
  ?share_settings:share_settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  zone:string prop ->
  specific_reservation:specific_reservation list ->
  unit ->
  google_compute_reservation

val yojson_of_google_compute_reservation :
  google_compute_reservation -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?specific_reservation_required:bool prop ->
  ?share_settings:share_settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  zone:string prop ->
  specific_reservation:specific_reservation list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?specific_reservation_required:bool prop ->
  ?share_settings:share_settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  zone:string prop ->
  specific_reservation:specific_reservation list ->
  string ->
  t Tf_core.resource

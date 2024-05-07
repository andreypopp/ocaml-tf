(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type share_settings__project_map = {
  id : string prop;  (** id *)
  project_id : string prop;  (** project_id *)
}

type share_settings = {
  project_map : share_settings__project_map list;  (** project_map *)
  share_type : string prop;  (** share_type *)
}

type specific_reservation__instance_properties__local_ssds = {
  disk_size_gb : float prop;  (** disk_size_gb *)
  interface : string prop;  (** interface *)
}

type specific_reservation__instance_properties__guest_accelerators = {
  accelerator_count : float prop;  (** accelerator_count *)
  accelerator_type : string prop;  (** accelerator_type *)
}

type specific_reservation__instance_properties = {
  guest_accelerators :
    specific_reservation__instance_properties__guest_accelerators
    list;
      (** guest_accelerators *)
  local_ssds :
    specific_reservation__instance_properties__local_ssds list;
      (** local_ssds *)
  machine_type : string prop;  (** machine_type *)
  min_cpu_platform : string prop;  (** min_cpu_platform *)
}

type specific_reservation = {
  count : float prop;  (** count *)
  in_use_count : float prop;  (** in_use_count *)
  instance_properties :
    specific_reservation__instance_properties list;
      (** instance_properties *)
}

type google_compute_reservation

val google_compute_reservation :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  zone:string prop ->
  unit ->
  google_compute_reservation

val yojson_of_google_compute_reservation :
  google_compute_reservation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  commitment : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  share_settings : share_settings list prop;
  specific_reservation : specific_reservation list prop;
  specific_reservation_required : bool prop;
  status : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  zone:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  zone:string prop ->
  string ->
  t Tf_core.resource

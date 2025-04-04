(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type managed

val managed : domains:string prop list -> unit -> managed

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_managed_ssl_certificate

val google_compute_managed_ssl_certificate :
  ?certificate_id:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?managed:managed list ->
  ?timeouts:timeouts ->
  unit ->
  google_compute_managed_ssl_certificate

val yojson_of_google_compute_managed_ssl_certificate :
  google_compute_managed_ssl_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_id : float prop;
  creation_timestamp : string prop;
  description : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  subject_alternative_names : string list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_id:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?managed:managed list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?certificate_id:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?managed:managed list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource

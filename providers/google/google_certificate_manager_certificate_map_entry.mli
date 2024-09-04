(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_certificate_manager_certificate_map_entry

val google_certificate_manager_certificate_map_entry :
  ?description:string prop ->
  ?hostname:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?matcher:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  certificates:string prop list ->
  map:string prop ->
  name:string prop ->
  unit ->
  google_certificate_manager_certificate_map_entry

val yojson_of_google_certificate_manager_certificate_map_entry :
  google_certificate_manager_certificate_map_entry -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificates : string list prop;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  hostname : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  map : string prop;
  matcher : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?hostname:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?matcher:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  certificates:string prop list ->
  map:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?hostname:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?matcher:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  certificates:string prop list ->
  map:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

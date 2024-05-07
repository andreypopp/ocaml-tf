(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type addresses = {
  address : string prop;  (** address *)
  address_type : string prop;  (** address_type *)
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
  self_link : string prop;  (** self_link *)
  status : string prop;  (** status *)
}

type google_compute_addresses

val google_compute_addresses :
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  unit ->
  google_compute_addresses

val yojson_of_google_compute_addresses :
  google_compute_addresses -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  addresses : addresses list prop;
  filter : string prop;
  id : string prop;
  project : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  string ->
  t

val make :
  ?filter:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  string ->
  t Tf_core.resource

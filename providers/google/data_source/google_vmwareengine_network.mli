(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vpc_networks = {
  network : string prop;  (** network *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_vmwareengine_network

val google_vmwareengine_network :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_vmwareengine_network

val yojson_of_google_vmwareengine_network :
  google_vmwareengine_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  vpc_networks : vpc_networks list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

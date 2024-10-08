(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_edgenetwork_network

val google_edgenetwork_network :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?mtu:float prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  network_id:string prop ->
  zone:string prop ->
  unit ->
  google_edgenetwork_network

val yojson_of_google_edgenetwork_network :
  google_edgenetwork_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  mtu : float prop;
  name : string prop;
  network_id : string prop;
  project : string prop;
  update_time : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?mtu:float prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  network_id:string prop ->
  zone:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?mtu:float prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  network_id:string prop ->
  zone:string prop ->
  string ->
  t Tf_core.resource

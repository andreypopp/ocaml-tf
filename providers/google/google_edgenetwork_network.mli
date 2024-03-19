(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_edgenetwork_network

val google_edgenetwork_network :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
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
  create_time : string prop;
  description : string prop;
  id : string prop;
  labels : (string * string) list prop;
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
  ?labels:(string * string prop) list ->
  ?mtu:float prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  network_id:string prop ->
  zone:string prop ->
  string ->
  t

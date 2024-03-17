(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_edgenetwork_network__timeouts
type google_edgenetwork_network

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

val google_edgenetwork_network :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?mtu:float prop ->
  ?project:string prop ->
  ?timeouts:google_edgenetwork_network__timeouts ->
  location:string prop ->
  network_id:string prop ->
  zone:string prop ->
  string ->
  t

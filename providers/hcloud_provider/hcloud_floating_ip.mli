(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_floating_ip

type t = private {
  delete_protection : bool prop;
  description : string prop;
  home_location : string prop;
  id : string prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : (string * string) list prop;
  name : string prop;
  server_id : float prop;
  type_ : string prop;
}

val hcloud_floating_ip :
  ?delete_protection:bool prop ->
  ?description:string prop ->
  ?home_location:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?server_id:float prop ->
  type_:string prop ->
  string ->
  t

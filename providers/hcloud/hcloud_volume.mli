(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type hcloud_volume

val hcloud_volume :
  ?automount:bool prop ->
  ?delete_protection:bool prop ->
  ?format:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?server_id:float prop ->
  name:string prop ->
  size:float prop ->
  unit ->
  hcloud_volume

val yojson_of_hcloud_volume : hcloud_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automount : bool prop;
  delete_protection : bool prop;
  format : string prop;
  id : string prop;
  labels : (string * string) list prop;
  linux_device : string prop;
  location : string prop;
  name : string prop;
  server_id : float prop;
  size : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?automount:bool prop ->
  ?delete_protection:bool prop ->
  ?format:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?server_id:float prop ->
  name:string prop ->
  size:float prop ->
  string ->
  t

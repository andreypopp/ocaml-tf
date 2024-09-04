(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_volume

val hcloud_volume :
  ?id:float prop ->
  ?location:string prop ->
  ?name:string prop ->
  ?selector:string prop ->
  ?server_id:float prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  unit ->
  hcloud_volume

val yojson_of_hcloud_volume : hcloud_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  delete_protection : bool prop;
  id : float prop;
  labels : string Tf_core.assoc prop;
  linux_device : string prop;
  location : string prop;
  name : string prop;
  selector : string prop;
  server_id : float prop;
  size : float prop;
  with_selector : string prop;
  with_status : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:float prop ->
  ?location:string prop ->
  ?name:string prop ->
  ?selector:string prop ->
  ?server_id:float prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  string ->
  t

val make :
  ?id:float prop ->
  ?location:string prop ->
  ?name:string prop ->
  ?selector:string prop ->
  ?server_id:float prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  string ->
  t Tf_core.resource

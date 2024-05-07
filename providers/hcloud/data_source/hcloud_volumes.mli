(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type volumes = {
  delete_protection : bool prop;  (** delete_protection *)
  id : float prop;  (** id *)
  labels : (string * string prop) list;  (** labels *)
  linux_device : string prop;  (** linux_device *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  server_id : float prop;  (** server_id *)
  size : float prop;  (** size *)
}

type hcloud_volumes

val hcloud_volumes :
  ?id:string prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  unit ->
  hcloud_volumes

val yojson_of_hcloud_volumes : hcloud_volumes -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  volumes : volumes list prop;
  with_selector : string prop;
  with_status : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?with_selector:string prop ->
  ?with_status:string prop list ->
  string ->
  t Tf_core.resource

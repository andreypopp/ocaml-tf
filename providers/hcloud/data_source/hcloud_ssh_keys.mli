(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ssh_keys = {
  fingerprint : string prop;  (** fingerprint *)
  id : float prop;  (** id *)
  labels : (string * string prop) list;  (** labels *)
  name : string prop;  (** name *)
  public_key : string prop;  (** public_key *)
}

type hcloud_ssh_keys

val hcloud_ssh_keys :
  ?id:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_ssh_keys

val yojson_of_hcloud_ssh_keys : hcloud_ssh_keys -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ssh_keys : ssh_keys list prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource

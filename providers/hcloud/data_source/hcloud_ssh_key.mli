(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_ssh_key

val hcloud_ssh_key :
  ?fingerprint:string prop ->
  ?id:float prop ->
  ?name:string prop ->
  ?selector:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_ssh_key

val yojson_of_hcloud_ssh_key : hcloud_ssh_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fingerprint : string prop;
  id : float prop;
  labels : (string * string) list prop;
  name : string prop;
  public_key : string prop;
  selector : string prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?fingerprint:string prop ->
  ?id:float prop ->
  ?name:string prop ->
  ?selector:string prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?fingerprint:string prop ->
  ?id:float prop ->
  ?name:string prop ->
  ?selector:string prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource

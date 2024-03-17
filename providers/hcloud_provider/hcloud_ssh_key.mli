(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_ssh_key

type t = private {
  fingerprint : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  public_key : string prop;
}

val hcloud_ssh_key :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  name:string prop ->
  public_key:string prop ->
  string ->
  t

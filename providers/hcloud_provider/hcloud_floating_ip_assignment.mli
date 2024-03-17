(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_floating_ip_assignment

type t = private {
  floating_ip_id : float prop;
  id : string prop;
  server_id : float prop;
}

val hcloud_floating_ip_assignment :
  ?id:string prop ->
  floating_ip_id:float prop ->
  server_id:float prop ->
  string ->
  t

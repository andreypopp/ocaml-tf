(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_load_balancer_target

type t = private {
  id : string prop;
  ip : string prop;
  label_selector : string prop;
  load_balancer_id : float prop;
  server_id : float prop;
  type_ : string prop;
  use_private_ip : bool prop;
}

val hcloud_load_balancer_target :
  ?id:string prop ->
  ?ip:string prop ->
  ?label_selector:string prop ->
  ?server_id:float prop ->
  ?use_private_ip:bool prop ->
  load_balancer_id:float prop ->
  type_:string prop ->
  string ->
  t

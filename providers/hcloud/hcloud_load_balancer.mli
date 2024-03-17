(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_load_balancer__algorithm
type hcloud_load_balancer__target
type hcloud_load_balancer

type t = private {
  delete_protection : bool prop;
  id : string prop;
  ipv4 : string prop;
  ipv6 : string prop;
  labels : (string * string) list prop;
  load_balancer_type : string prop;
  location : string prop;
  name : string prop;
  network_id : float prop;
  network_ip : string prop;
  network_zone : string prop;
}

val hcloud_load_balancer :
  ?delete_protection:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?network_zone:string prop ->
  load_balancer_type:string prop ->
  name:string prop ->
  algorithm:hcloud_load_balancer__algorithm list ->
  target:hcloud_load_balancer__target list ->
  string ->
  t

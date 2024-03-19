(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type algorithm

val algorithm : ?type_:string prop -> unit -> algorithm

type target

val target :
  ?server_id:float prop ->
  ?use_private_ip:bool prop ->
  type_:string prop ->
  unit ->
  target

type hcloud_load_balancer

val hcloud_load_balancer :
  ?delete_protection:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?network_zone:string prop ->
  load_balancer_type:string prop ->
  name:string prop ->
  algorithm:algorithm list ->
  target:target list ->
  unit ->
  hcloud_load_balancer

val yojson_of_hcloud_load_balancer : hcloud_load_balancer -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?delete_protection:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?network_zone:string prop ->
  load_balancer_type:string prop ->
  name:string prop ->
  algorithm:algorithm list ->
  target:target list ->
  string ->
  t

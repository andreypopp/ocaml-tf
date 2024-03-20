(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_rdns

val hcloud_rdns :
  ?floating_ip_id:float prop ->
  ?id:string prop ->
  ?load_balancer_id:float prop ->
  ?primary_ip_id:float prop ->
  ?server_id:float prop ->
  dns_ptr:string prop ->
  ip_address:string prop ->
  unit ->
  hcloud_rdns

val yojson_of_hcloud_rdns : hcloud_rdns -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dns_ptr : string prop;
  floating_ip_id : float prop;
  id : string prop;
  ip_address : string prop;
  load_balancer_id : float prop;
  primary_ip_id : float prop;
  server_id : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?floating_ip_id:float prop ->
  ?id:string prop ->
  ?load_balancer_id:float prop ->
  ?primary_ip_id:float prop ->
  ?server_id:float prop ->
  dns_ptr:string prop ->
  ip_address:string prop ->
  string ->
  t

val make :
  ?floating_ip_id:float prop ->
  ?id:string prop ->
  ?load_balancer_id:float prop ->
  ?primary_ip_id:float prop ->
  ?server_id:float prop ->
  dns_ptr:string prop ->
  ip_address:string prop ->
  string ->
  t Tf_core.resource

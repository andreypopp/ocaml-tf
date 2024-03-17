(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_rdns

val hcloud_rdns :
  ?floating_ip_id:float prop ->
  ?id:string prop ->
  ?load_balancer_id:float prop ->
  ?primary_ip_id:float prop ->
  ?server_id:float prop ->
  dns_ptr:string prop ->
  ip_address:string prop ->
  string ->
  unit

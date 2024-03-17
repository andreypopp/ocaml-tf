(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_rdns

val hcloud_rdns :
  ?floating_ip_id:float ->
  ?load_balancer_id:float ->
  ?primary_ip_id:float ->
  ?server_id:float ->
  dns_ptr:string ->
  ip_address:string ->
  string ->
  unit

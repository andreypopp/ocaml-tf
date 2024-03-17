(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_load_balancer_service__health_check__http
type hcloud_load_balancer_service__health_check
type hcloud_load_balancer_service__http
type hcloud_load_balancer_service

val hcloud_load_balancer_service :
  ?destination_port:float prop ->
  ?id:string prop ->
  ?listen_port:float prop ->
  ?proxyprotocol:bool prop ->
  load_balancer_id:string prop ->
  protocol:string prop ->
  health_check:hcloud_load_balancer_service__health_check list ->
  http:hcloud_load_balancer_service__http list ->
  string ->
  unit

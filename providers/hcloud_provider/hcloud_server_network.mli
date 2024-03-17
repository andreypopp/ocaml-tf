(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_server_network

val hcloud_server_network :
  ?alias_ips:string prop list ->
  ?id:string prop ->
  ?ip:string prop ->
  ?network_id:float prop ->
  ?subnet_id:string prop ->
  server_id:float prop ->
  string ->
  unit

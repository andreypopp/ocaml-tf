(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_server_network

val hcloud_server_network :
  ?alias_ips:string prop list ->
  ?id:string prop ->
  ?ip:string prop ->
  ?network_id:float prop ->
  ?subnet_id:string prop ->
  server_id:float prop ->
  unit ->
  hcloud_server_network

val yojson_of_hcloud_server_network : hcloud_server_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias_ips : string list prop;
  id : string prop;
  ip : string prop;
  mac_address : string prop;
  network_id : float prop;
  server_id : float prop;
  subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?alias_ips:string prop list ->
  ?id:string prop ->
  ?ip:string prop ->
  ?network_id:float prop ->
  ?subnet_id:string prop ->
  server_id:float prop ->
  string ->
  t

val make :
  ?alias_ips:string prop list ->
  ?id:string prop ->
  ?ip:string prop ->
  ?network_id:float prop ->
  ?subnet_id:string prop ->
  server_id:float prop ->
  string ->
  t Tf_core.resource

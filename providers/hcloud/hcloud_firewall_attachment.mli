(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_firewall_attachment

val hcloud_firewall_attachment :
  ?id:string prop ->
  ?label_selectors:string prop list ->
  ?server_ids:float prop list ->
  firewall_id:float prop ->
  unit ->
  hcloud_firewall_attachment

val yojson_of_hcloud_firewall_attachment :
  hcloud_firewall_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  firewall_id : float prop;
  id : string prop;
  label_selectors : string list prop;
  server_ids : float list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?label_selectors:string prop list ->
  ?server_ids:float prop list ->
  firewall_id:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?label_selectors:string prop list ->
  ?server_ids:float prop list ->
  firewall_id:float prop ->
  string ->
  t Tf_core.resource

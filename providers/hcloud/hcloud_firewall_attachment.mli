(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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

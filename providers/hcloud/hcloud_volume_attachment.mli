(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_volume_attachment

val hcloud_volume_attachment :
  ?automount:bool prop ->
  ?id:string prop ->
  server_id:float prop ->
  volume_id:float prop ->
  unit ->
  hcloud_volume_attachment

val yojson_of_hcloud_volume_attachment :
  hcloud_volume_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automount : bool prop;
  id : string prop;
  server_id : float prop;
  volume_id : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?automount:bool prop ->
  ?id:string prop ->
  server_id:float prop ->
  volume_id:float prop ->
  string ->
  t

val make :
  ?automount:bool prop ->
  ?id:string prop ->
  server_id:float prop ->
  volume_id:float prop ->
  string ->
  t Tf_core.resource

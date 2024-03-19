(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type hcloud_network_subnet

val hcloud_network_subnet :
  ?id:string prop ->
  ?vswitch_id:float prop ->
  ip_range:string prop ->
  network_id:float prop ->
  network_zone:string prop ->
  type_:string prop ->
  unit ->
  hcloud_network_subnet

val yojson_of_hcloud_network_subnet : hcloud_network_subnet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  gateway : string prop;
  id : string prop;
  ip_range : string prop;
  network_id : float prop;
  network_zone : string prop;
  type_ : string prop;
  vswitch_id : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?vswitch_id:float prop ->
  ip_range:string prop ->
  network_id:float prop ->
  network_zone:string prop ->
  type_:string prop ->
  string ->
  t

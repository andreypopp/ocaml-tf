(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_networkmanager_connections

val aws_networkmanager_connections :
  ?device_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  global_network_id:string prop ->
  unit ->
  aws_networkmanager_connections

val yojson_of_aws_networkmanager_connections :
  aws_networkmanager_connections -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  ids : string list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?device_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  global_network_id:string prop ->
  string ->
  t

val make :
  ?device_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  global_network_id:string prop ->
  string ->
  t Tf_core.resource

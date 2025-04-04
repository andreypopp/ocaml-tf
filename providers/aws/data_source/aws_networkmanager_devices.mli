(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_networkmanager_devices

val aws_networkmanager_devices :
  ?id:string prop ->
  ?site_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  global_network_id:string prop ->
  unit ->
  aws_networkmanager_devices

val yojson_of_aws_networkmanager_devices :
  aws_networkmanager_devices -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  global_network_id : string prop;
  id : string prop;
  ids : string list prop;
  site_id : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?site_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  global_network_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?site_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  global_network_id:string prop ->
  string ->
  t Tf_core.resource

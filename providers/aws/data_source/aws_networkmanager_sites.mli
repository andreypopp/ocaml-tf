(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_networkmanager_sites

val aws_networkmanager_sites :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  global_network_id:string prop ->
  unit ->
  aws_networkmanager_sites

val yojson_of_aws_networkmanager_sites :
  aws_networkmanager_sites -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  global_network_id : string prop;
  id : string prop;
  ids : string list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  global_network_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  global_network_id:string prop ->
  string ->
  t Tf_core.resource

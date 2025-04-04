(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_networkmanager_global_networks

val aws_networkmanager_global_networks :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  unit ->
  aws_networkmanager_global_networks

val yojson_of_aws_networkmanager_global_networks :
  aws_networkmanager_global_networks -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ids : string list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource

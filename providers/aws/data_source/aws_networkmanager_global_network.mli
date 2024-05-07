(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_networkmanager_global_network

val aws_networkmanager_global_network :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  global_network_id:string prop ->
  unit ->
  aws_networkmanager_global_network

val yojson_of_aws_networkmanager_global_network :
  aws_networkmanager_global_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  global_network_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  global_network_id:string prop ->
  string ->
  t Tf_core.resource

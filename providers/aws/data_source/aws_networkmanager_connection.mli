(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_networkmanager_connection

val aws_networkmanager_connection :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  connection_id:string prop ->
  global_network_id:string prop ->
  unit ->
  aws_networkmanager_connection

val yojson_of_aws_networkmanager_connection :
  aws_networkmanager_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  connected_device_id : string prop;
  connected_link_id : string prop;
  connection_id : string prop;
  description : string prop;
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  connection_id:string prop ->
  global_network_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  connection_id:string prop ->
  global_network_id:string prop ->
  string ->
  t Tf_core.resource

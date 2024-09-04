(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_networkmanager_connection

val aws_networkmanager_connection :
  ?connected_link_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?link_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  connected_device_id:string prop ->
  device_id:string prop ->
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
  description : string prop;
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?connected_link_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?link_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  connected_device_id:string prop ->
  device_id:string prop ->
  global_network_id:string prop ->
  string ->
  t

val make :
  ?connected_link_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?link_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  connected_device_id:string prop ->
  device_id:string prop ->
  global_network_id:string prop ->
  string ->
  t Tf_core.resource

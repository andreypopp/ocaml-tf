(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_proxy_protocol_policy

val aws_proxy_protocol_policy :
  ?id:string prop ->
  instance_ports:string prop list ->
  load_balancer:string prop ->
  unit ->
  aws_proxy_protocol_policy

val yojson_of_aws_proxy_protocol_policy :
  aws_proxy_protocol_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  instance_ports : string list prop;
  load_balancer : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  instance_ports:string prop list ->
  load_balancer:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  instance_ports:string prop list ->
  load_balancer:string prop ->
  string ->
  t Tf_core.resource

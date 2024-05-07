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

type aws_opensearchserverless_vpc_endpoint

val aws_opensearchserverless_vpc_endpoint :
  ?security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  unit ->
  aws_opensearchserverless_vpc_endpoint

val yojson_of_aws_opensearchserverless_vpc_endpoint :
  aws_opensearchserverless_vpc_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  string ->
  t

val make :
  ?security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  string ->
  t Tf_core.resource

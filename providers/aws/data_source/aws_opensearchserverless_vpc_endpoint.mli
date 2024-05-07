(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_opensearchserverless_vpc_endpoint

val aws_opensearchserverless_vpc_endpoint :
  ?id:string prop ->
  vpc_endpoint_id:string prop ->
  unit ->
  aws_opensearchserverless_vpc_endpoint

val yojson_of_aws_opensearchserverless_vpc_endpoint :
  aws_opensearchserverless_vpc_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_date : string prop;
  id : string prop;
  name : string prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  vpc_endpoint_id : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  vpc_endpoint_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  vpc_endpoint_id:string prop ->
  string ->
  t Tf_core.resource

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

type aws_db_proxy_endpoint

val aws_db_proxy_endpoint :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?target_role:string prop ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  db_proxy_endpoint_name:string prop ->
  db_proxy_name:string prop ->
  vpc_subnet_ids:string prop list ->
  unit ->
  aws_db_proxy_endpoint

val yojson_of_aws_db_proxy_endpoint : aws_db_proxy_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  db_proxy_endpoint_name : string prop;
  db_proxy_name : string prop;
  endpoint : string prop;
  id : string prop;
  is_default : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  target_role : string prop;
  vpc_id : string prop;
  vpc_security_group_ids : string list prop;
  vpc_subnet_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?target_role:string prop ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  db_proxy_endpoint_name:string prop ->
  db_proxy_name:string prop ->
  vpc_subnet_ids:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?target_role:string prop ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  db_proxy_endpoint_name:string prop ->
  db_proxy_name:string prop ->
  vpc_subnet_ids:string prop list ->
  string ->
  t Tf_core.resource

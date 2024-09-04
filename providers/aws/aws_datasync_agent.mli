(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_datasync_agent

val aws_datasync_agent :
  ?activation_key:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?name:string prop ->
  ?private_link_endpoint:string prop ->
  ?security_group_arns:string prop list ->
  ?subnet_arns:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_endpoint_id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  aws_datasync_agent

val yojson_of_aws_datasync_agent : aws_datasync_agent -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  activation_key : string prop;
  arn : string prop;
  id : string prop;
  ip_address : string prop;
  name : string prop;
  private_link_endpoint : string prop;
  security_group_arns : string list prop;
  subnet_arns : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_endpoint_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?activation_key:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?name:string prop ->
  ?private_link_endpoint:string prop ->
  ?security_group_arns:string prop list ->
  ?subnet_arns:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_endpoint_id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?activation_key:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?name:string prop ->
  ?private_link_endpoint:string prop ->
  ?security_group_arns:string prop list ->
  ?subnet_arns:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_endpoint_id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource

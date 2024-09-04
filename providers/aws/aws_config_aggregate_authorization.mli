(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_config_aggregate_authorization

val aws_config_aggregate_authorization :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  account_id:string prop ->
  region:string prop ->
  unit ->
  aws_config_aggregate_authorization

val yojson_of_aws_config_aggregate_authorization :
  aws_config_aggregate_authorization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  arn : string prop;
  id : string prop;
  region : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  account_id:string prop ->
  region:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  account_id:string prop ->
  region:string prop ->
  string ->
  t Tf_core.resource

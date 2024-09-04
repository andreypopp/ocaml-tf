(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_secretsmanager_secret

val aws_secretsmanager_secret :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  unit ->
  aws_secretsmanager_secret

val yojson_of_aws_secretsmanager_secret :
  aws_secretsmanager_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  last_changed_date : string prop;
  name : string prop;
  policy : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_opensearchserverless_security_policy

val aws_opensearchserverless_security_policy :
  ?id:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  aws_opensearchserverless_security_policy

val yojson_of_aws_opensearchserverless_security_policy :
  aws_opensearchserverless_security_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_modified_date : string prop;
  name : string prop;
  policy : string prop;
  policy_version : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource

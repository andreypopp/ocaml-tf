(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_opensearchserverless_security_policy

val aws_opensearchserverless_security_policy :
  ?description:string prop ->
  name:string prop ->
  policy:string prop ->
  type_:string prop ->
  unit ->
  aws_opensearchserverless_security_policy

val yojson_of_aws_opensearchserverless_security_policy :
  aws_opensearchserverless_security_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
  policy_version : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  name:string prop ->
  policy:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  name:string prop ->
  policy:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource

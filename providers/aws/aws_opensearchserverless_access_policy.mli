(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearchserverless_access_policy

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
  policy_version : string prop;
  type_ : string prop;
}

val aws_opensearchserverless_access_policy :
  ?description:string prop ->
  name:string prop ->
  policy:string prop ->
  type_:string prop ->
  string ->
  t

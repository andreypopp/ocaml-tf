(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_policy

val aws_iam_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  policy:string prop ->
  unit ->
  aws_iam_policy

val yojson_of_aws_iam_policy : aws_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  policy : string prop;
  policy_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  policy:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  policy:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_openid_connect_provider

val aws_iam_openid_connect_provider :
  ?arn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?url:string prop ->
  unit ->
  aws_iam_openid_connect_provider

val yojson_of_aws_iam_openid_connect_provider :
  aws_iam_openid_connect_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  client_id_list : string list prop;
  id : string prop;
  tags : (string * string) list prop;
  thumbprint_list : string list prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?url:string prop ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?url:string prop ->
  string ->
  t Tf_core.resource

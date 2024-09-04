(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_openid_connect_provider

val aws_iam_openid_connect_provider :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  client_id_list:string prop list ->
  thumbprint_list:string prop list ->
  url:string prop ->
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  thumbprint_list : string list prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  client_id_list:string prop list ->
  thumbprint_list:string prop list ->
  url:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  client_id_list:string prop list ->
  thumbprint_list:string prop list ->
  url:string prop ->
  string ->
  t Tf_core.resource

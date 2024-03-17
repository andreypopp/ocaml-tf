(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_openid_connect_provider

type t = private {
  arn : string prop;
  client_id_list : string list prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  thumbprint_list : string list prop;
  url : string prop;
}

val aws_iam_openid_connect_provider :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  client_id_list:string prop list ->
  thumbprint_list:string prop list ->
  url:string prop ->
  string ->
  t

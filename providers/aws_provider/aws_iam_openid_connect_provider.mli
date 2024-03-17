(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_openid_connect_provider

val aws_iam_openid_connect_provider :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  client_id_list:string prop list ->
  thumbprint_list:string prop list ->
  url:string prop ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glacier_vault__notification
type aws_glacier_vault

type t = private {
  access_policy : string prop;
  arn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_glacier_vault :
  ?access_policy:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  notification:aws_glacier_vault__notification list ->
  string ->
  t

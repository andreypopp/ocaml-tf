(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appsync_type

type t = private {
  api_id : string prop;
  arn : string prop;
  definition : string prop;
  description : string prop;
  format : string prop;
  id : string prop;
  name : string prop;
}

val aws_appsync_type :
  ?id:string prop ->
  api_id:string prop ->
  definition:string prop ->
  format:string prop ->
  string ->
  t

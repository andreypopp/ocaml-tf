(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appsync_api_key

type t = private {
  api_id : string prop;
  description : string prop;
  expires : string prop;
  id : string prop;
  key : string prop;
}

val aws_appsync_api_key :
  ?description:string prop ->
  ?expires:string prop ->
  ?id:string prop ->
  api_id:string prop ->
  string ->
  t

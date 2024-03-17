(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_amplify_webhook

type t = private {
  app_id : string prop;
  arn : string prop;
  branch_name : string prop;
  description : string prop;
  id : string prop;
  url : string prop;
}

val aws_amplify_webhook :
  ?description:string prop ->
  ?id:string prop ->
  app_id:string prop ->
  branch_name:string prop ->
  string ->
  t

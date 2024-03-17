(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_template

type t = private {
  arn : string prop;
  html : string prop;
  id : string prop;
  name : string prop;
  subject : string prop;
  text : string prop;
}

val aws_ses_template :
  ?html:string prop ->
  ?id:string prop ->
  ?subject:string prop ->
  ?text:string prop ->
  name:string prop ->
  string ->
  t

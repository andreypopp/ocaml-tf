(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ses_template

val aws_ses_template :
  ?html:string prop ->
  ?id:string prop ->
  ?subject:string prop ->
  ?text:string prop ->
  name:string prop ->
  unit ->
  aws_ses_template

val yojson_of_aws_ses_template : aws_ses_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  html : string prop;
  id : string prop;
  name : string prop;
  subject : string prop;
  text : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?html:string prop ->
  ?id:string prop ->
  ?subject:string prop ->
  ?text:string prop ->
  name:string prop ->
  string ->
  t

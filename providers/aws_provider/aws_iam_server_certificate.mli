(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_server_certificate

val aws_iam_server_certificate :
  ?certificate_chain:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  certificate_body:string prop ->
  private_key:string prop ->
  string ->
  unit

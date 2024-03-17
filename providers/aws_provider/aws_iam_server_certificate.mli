(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_server_certificate

val aws_iam_server_certificate :
  ?certificate_chain:string ->
  ?id:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?path:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  certificate_body:string ->
  private_key:string ->
  string ->
  unit

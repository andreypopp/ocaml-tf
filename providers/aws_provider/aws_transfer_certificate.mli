(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_certificate

val aws_transfer_certificate :
  ?certificate_chain:string ->
  ?description:string ->
  ?id:string ->
  ?private_key:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  certificate:string ->
  usage:string ->
  string ->
  unit

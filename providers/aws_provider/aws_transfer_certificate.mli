(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_certificate

val aws_transfer_certificate :
  ?certificate_chain:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?private_key:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  certificate:string prop ->
  usage:string prop ->
  string ->
  unit

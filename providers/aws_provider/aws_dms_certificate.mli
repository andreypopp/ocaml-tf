(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_certificate

val aws_dms_certificate :
  ?certificate_pem:string prop ->
  ?certificate_wallet:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  certificate_id:string prop ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_certificate

val aws_dms_certificate :
  ?certificate_pem:string ->
  ?certificate_wallet:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  certificate_id:string ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_certificate

val aws_iot_certificate :
  ?ca_pem:string prop ->
  ?certificate_pem:string prop ->
  ?csr:string prop ->
  ?id:string prop ->
  active:bool prop ->
  string ->
  unit

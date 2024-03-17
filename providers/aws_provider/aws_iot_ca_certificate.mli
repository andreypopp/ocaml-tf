(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_ca_certificate__registration_config

type aws_iot_ca_certificate__validity = {
  not_after : string prop;  (** not_after *)
  not_before : string prop;  (** not_before *)
}

type aws_iot_ca_certificate

val aws_iot_ca_certificate :
  ?certificate_mode:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?verification_certificate_pem:string prop ->
  active:bool prop ->
  allow_auto_registration:bool prop ->
  ca_certificate_pem:string prop ->
  registration_config:
    aws_iot_ca_certificate__registration_config list ->
  string ->
  unit

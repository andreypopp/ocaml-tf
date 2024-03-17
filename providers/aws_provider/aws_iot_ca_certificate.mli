(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_ca_certificate__registration_config

type aws_iot_ca_certificate__validity = {
  not_after : string;  (** not_after *)
  not_before : string;  (** not_before *)
}
[@@deriving yojson_of]

type aws_iot_ca_certificate

val aws_iot_ca_certificate :
  ?certificate_mode:string ->
  ?tags:(string * string) list ->
  ?verification_certificate_pem:string ->
  active:bool ->
  allow_auto_registration:bool ->
  ca_certificate_pem:string ->
  registration_config:
    aws_iot_ca_certificate__registration_config list ->
  string ->
  unit

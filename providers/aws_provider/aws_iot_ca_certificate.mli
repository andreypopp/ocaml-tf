(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_ca_certificate__registration_config

type aws_iot_ca_certificate__validity = {
  not_after : string prop;  (** not_after *)
  not_before : string prop;  (** not_before *)
}

type aws_iot_ca_certificate

type t = private {
  active : bool prop;
  allow_auto_registration : bool prop;
  arn : string prop;
  ca_certificate_pem : string prop;
  certificate_mode : string prop;
  customer_version : float prop;
  generation_id : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  validity : aws_iot_ca_certificate__validity list prop;
  verification_certificate_pem : string prop;
}

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
  t

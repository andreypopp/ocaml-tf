(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type validity = {
  not_after : string prop;  (** not_after *)
  not_before : string prop;  (** not_before *)
}

[@@@deriving.end]

type registration_config

val registration_config :
  ?role_arn:string prop ->
  ?template_body:string prop ->
  ?template_name:string prop ->
  unit ->
  registration_config

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
  registration_config:registration_config list ->
  unit ->
  aws_iot_ca_certificate

val yojson_of_aws_iot_ca_certificate : aws_iot_ca_certificate -> json

(** RESOURCE REGISTRATION *)

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
  validity : validity list prop;
  verification_certificate_pem : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_mode:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?verification_certificate_pem:string prop ->
  active:bool prop ->
  allow_auto_registration:bool prop ->
  ca_certificate_pem:string prop ->
  registration_config:registration_config list ->
  string ->
  t

val make :
  ?certificate_mode:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?verification_certificate_pem:string prop ->
  active:bool prop ->
  allow_auto_registration:bool prop ->
  ca_certificate_pem:string prop ->
  registration_config:registration_config list ->
  string ->
  t Tf_core.resource

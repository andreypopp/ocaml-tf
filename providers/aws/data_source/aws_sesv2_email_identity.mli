(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dkim_signing_attributes = {
  current_signing_key_length : string prop;
      (** current_signing_key_length *)
  domain_signing_private_key : string prop;
      (** domain_signing_private_key *)
  domain_signing_selector : string prop;
      (** domain_signing_selector *)
  last_key_generation_timestamp : string prop;
      (** last_key_generation_timestamp *)
  next_signing_key_length : string prop;
      (** next_signing_key_length *)
  signing_attributes_origin : string prop;
      (** signing_attributes_origin *)
  status : string prop;  (** status *)
  tokens : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** tokens *)
}

type aws_sesv2_email_identity

val aws_sesv2_email_identity :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  email_identity:string prop ->
  unit ->
  aws_sesv2_email_identity

val yojson_of_aws_sesv2_email_identity :
  aws_sesv2_email_identity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  configuration_set_name : string prop;
  dkim_signing_attributes : dkim_signing_attributes list prop;
  email_identity : string prop;
  id : string prop;
  identity_type : string prop;
  tags : (string * string) list prop;
  verified_for_sending_status : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  email_identity:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  email_identity:string prop ->
  string ->
  t Tf_core.resource

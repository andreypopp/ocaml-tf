(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dkim_signing_attributes

val dkim_signing_attributes :
  ?domain_signing_private_key:string prop ->
  ?domain_signing_selector:string prop ->
  ?next_signing_key_length:string prop ->
  unit ->
  dkim_signing_attributes

type aws_sesv2_email_identity

val aws_sesv2_email_identity :
  ?configuration_set_name:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?dkim_signing_attributes:dkim_signing_attributes list ->
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
  email_identity : string prop;
  id : string prop;
  identity_type : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  verified_for_sending_status : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?configuration_set_name:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?dkim_signing_attributes:dkim_signing_attributes list ->
  email_identity:string prop ->
  string ->
  t

val make :
  ?configuration_set_name:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?dkim_signing_attributes:dkim_signing_attributes list ->
  email_identity:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type domain_validation_options = {
  domain_name : string prop;  (** domain_name *)
  resource_record_name : string prop;  (** resource_record_name *)
  resource_record_type : string prop;  (** resource_record_type *)
  resource_record_value : string prop;  (** resource_record_value *)
}

type aws_lightsail_certificate

val aws_lightsail_certificate :
  ?domain_name:string prop ->
  ?id:string prop ->
  ?subject_alternative_names:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_lightsail_certificate

val yojson_of_aws_lightsail_certificate :
  aws_lightsail_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_at : string prop;
  domain_name : string prop;
  domain_validation_options : domain_validation_options list prop;
  id : string prop;
  name : string prop;
  subject_alternative_names : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?domain_name:string prop ->
  ?id:string prop ->
  ?subject_alternative_names:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?domain_name:string prop ->
  ?id:string prop ->
  ?subject_alternative_names:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_certificate__domain_validation_options = {
  domain_name : string prop;  (** domain_name *)
  resource_record_name : string prop;  (** resource_record_name *)
  resource_record_type : string prop;  (** resource_record_type *)
  resource_record_value : string prop;  (** resource_record_value *)
}

type aws_lightsail_certificate

type t = private {
  arn : string prop;
  created_at : string prop;
  domain_name : string prop;
  domain_validation_options :
    aws_lightsail_certificate__domain_validation_options list prop;
  id : string prop;
  name : string prop;
  subject_alternative_names : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_lightsail_certificate :
  ?domain_name:string prop ->
  ?id:string prop ->
  ?subject_alternative_names:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  t

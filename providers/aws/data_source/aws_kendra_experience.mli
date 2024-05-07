(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__user_identity_configuration = {
  identity_attribute_name : string prop;
      (** identity_attribute_name *)
}

type configuration__content_source_configuration = {
  data_source_ids : string prop list;  (** data_source_ids *)
  direct_put_content : bool prop;  (** direct_put_content *)
  faq_ids : string prop list;  (** faq_ids *)
}

type configuration = {
  content_source_configuration :
    configuration__content_source_configuration list;
      (** content_source_configuration *)
  user_identity_configuration :
    configuration__user_identity_configuration list;
      (** user_identity_configuration *)
}

type endpoints = {
  endpoint : string prop;  (** endpoint *)
  endpoint_type : string prop;  (** endpoint_type *)
}

type aws_kendra_experience

val aws_kendra_experience :
  ?id:string prop ->
  experience_id:string prop ->
  index_id:string prop ->
  unit ->
  aws_kendra_experience

val yojson_of_aws_kendra_experience : aws_kendra_experience -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  configuration : configuration list prop;
  created_at : string prop;
  description : string prop;
  endpoints : endpoints list prop;
  error_message : string prop;
  experience_id : string prop;
  id : string prop;
  index_id : string prop;
  name : string prop;
  role_arn : string prop;
  status : string prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  experience_id:string prop ->
  index_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  experience_id:string prop ->
  index_id:string prop ->
  string ->
  t Tf_core.resource

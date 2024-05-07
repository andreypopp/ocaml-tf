(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoints = {
  endpoint : string prop;  (** endpoint *)
  endpoint_type : string prop;  (** endpoint_type *)
}

type configuration__content_source_configuration

val configuration__content_source_configuration :
  ?data_source_ids:string prop list ->
  ?direct_put_content:bool prop ->
  ?faq_ids:string prop list ->
  unit ->
  configuration__content_source_configuration

type configuration__user_identity_configuration

val configuration__user_identity_configuration :
  identity_attribute_name:string prop ->
  unit ->
  configuration__user_identity_configuration

type configuration

val configuration :
  ?content_source_configuration:
    configuration__content_source_configuration list ->
  ?user_identity_configuration:
    configuration__user_identity_configuration list ->
  unit ->
  configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_kendra_experience

val aws_kendra_experience :
  ?description:string prop ->
  ?id:string prop ->
  ?configuration:configuration list ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  unit ->
  aws_kendra_experience

val yojson_of_aws_kendra_experience : aws_kendra_experience -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  endpoints : endpoints list prop;
  experience_id : string prop;
  id : string prop;
  index_id : string prop;
  name : string prop;
  role_arn : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?configuration:configuration list ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?configuration:configuration list ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource

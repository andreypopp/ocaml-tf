(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type portal_options__sign_in_options

val portal_options__sign_in_options :
  ?application_url:string prop ->
  origin:string prop ->
  unit ->
  portal_options__sign_in_options

type portal_options

val portal_options :
  ?visibility:string prop ->
  sign_in_options:portal_options__sign_in_options list ->
  unit ->
  portal_options

type aws_ssoadmin_application

val aws_ssoadmin_application :
  ?client_token:string prop ->
  ?description:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  application_provider_arn:string prop ->
  instance_arn:string prop ->
  name:string prop ->
  portal_options:portal_options list ->
  unit ->
  aws_ssoadmin_application

val yojson_of_aws_ssoadmin_application :
  aws_ssoadmin_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_account : string prop;
  application_arn : string prop;
  application_provider_arn : string prop;
  client_token : string prop;
  description : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_token:string prop ->
  ?description:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  application_provider_arn:string prop ->
  instance_arn:string prop ->
  name:string prop ->
  portal_options:portal_options list ->
  string ->
  t

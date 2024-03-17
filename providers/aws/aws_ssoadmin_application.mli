(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_application__portal_options__sign_in_options
type aws_ssoadmin_application__portal_options
type aws_ssoadmin_application

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

val aws_ssoadmin_application :
  ?client_token:string prop ->
  ?description:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  application_provider_arn:string prop ->
  instance_arn:string prop ->
  name:string prop ->
  portal_options:aws_ssoadmin_application__portal_options list ->
  string ->
  t

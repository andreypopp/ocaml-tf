(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_app__resource_spec
type aws_sagemaker_app

type t = private {
  app_name : string prop;
  app_type : string prop;
  arn : string prop;
  domain_id : string prop;
  id : string prop;
  space_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_profile_name : string prop;
}

val aws_sagemaker_app :
  ?id:string prop ->
  ?space_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_profile_name:string prop ->
  app_name:string prop ->
  app_type:string prop ->
  domain_id:string prop ->
  resource_spec:aws_sagemaker_app__resource_spec list ->
  string ->
  t

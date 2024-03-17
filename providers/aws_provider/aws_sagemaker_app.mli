(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_app__resource_spec
type aws_sagemaker_app

val aws_sagemaker_app :
  ?id:string ->
  ?space_name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?user_profile_name:string ->
  app_name:string ->
  app_type:string ->
  domain_id:string ->
  resource_spec:aws_sagemaker_app__resource_spec list ->
  string ->
  unit

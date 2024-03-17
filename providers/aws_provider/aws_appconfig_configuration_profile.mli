(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_configuration_profile__validator
type aws_appconfig_configuration_profile

val aws_appconfig_configuration_profile :
  ?description:string ->
  ?id:string ->
  ?kms_key_identifier:string ->
  ?retrieval_role_arn:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?type_:string ->
  application_id:string ->
  location_uri:string ->
  name:string ->
  validator:aws_appconfig_configuration_profile__validator list ->
  string ->
  unit

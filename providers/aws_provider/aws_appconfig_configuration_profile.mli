(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_configuration_profile__validator
type aws_appconfig_configuration_profile

val aws_appconfig_configuration_profile :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_identifier:string prop ->
  ?retrieval_role_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  application_id:string prop ->
  location_uri:string prop ->
  name:string prop ->
  validator:aws_appconfig_configuration_profile__validator list ->
  string ->
  unit

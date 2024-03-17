(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_hosted_configuration_version

type t = private {
  application_id : string prop;
  arn : string prop;
  configuration_profile_id : string prop;
  content : string prop;
  content_type : string prop;
  description : string prop;
  id : string prop;
  version_number : float prop;
}

val aws_appconfig_hosted_configuration_version :
  ?description:string prop ->
  ?id:string prop ->
  application_id:string prop ->
  configuration_profile_id:string prop ->
  content:string prop ->
  content_type:string prop ->
  string ->
  t

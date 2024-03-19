(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_apprunner_default_auto_scaling_configuration_version

val aws_apprunner_default_auto_scaling_configuration_version :
  auto_scaling_configuration_arn:string prop ->
  unit ->
  aws_apprunner_default_auto_scaling_configuration_version

val yojson_of_aws_apprunner_default_auto_scaling_configuration_version :
  aws_apprunner_default_auto_scaling_configuration_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_scaling_configuration_arn : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  auto_scaling_configuration_arn:string prop ->
  string ->
  t

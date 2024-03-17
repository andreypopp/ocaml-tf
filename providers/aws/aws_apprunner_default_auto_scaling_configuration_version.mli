(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_default_auto_scaling_configuration_version

type t = private {
  auto_scaling_configuration_arn : string prop;
  id : string prop;
}

val aws_apprunner_default_auto_scaling_configuration_version :
  auto_scaling_configuration_arn:string prop -> string -> t

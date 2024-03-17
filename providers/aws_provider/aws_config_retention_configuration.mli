(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_retention_configuration

type t = private {
  id : string prop;
  name : string prop;
  retention_period_in_days : float prop;
}

val aws_config_retention_configuration :
  retention_period_in_days:float prop -> string -> t

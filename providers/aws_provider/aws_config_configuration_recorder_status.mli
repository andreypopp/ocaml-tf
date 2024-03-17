(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_configuration_recorder_status

type t = private {
  id : string prop;
  is_enabled : bool prop;
  name : string prop;
}

val aws_config_configuration_recorder_status :
  ?id:string prop ->
  is_enabled:bool prop ->
  name:string prop ->
  string ->
  t

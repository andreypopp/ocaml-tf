(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_devicefarm_device_pool__rule
type aws_devicefarm_device_pool

val aws_devicefarm_device_pool :
  ?description:string ->
  ?id:string ->
  ?max_devices:float ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  project_arn:string ->
  rule:aws_devicefarm_device_pool__rule list ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dax_parameter_group__parameters
type aws_dax_parameter_group

val aws_dax_parameter_group :
  ?description:string ->
  ?id:string ->
  name:string ->
  parameters:aws_dax_parameter_group__parameters list ->
  string ->
  unit

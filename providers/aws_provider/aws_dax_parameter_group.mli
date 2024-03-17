(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dax_parameter_group__parameters
type aws_dax_parameter_group

val aws_dax_parameter_group :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  parameters:aws_dax_parameter_group__parameters list ->
  string ->
  unit

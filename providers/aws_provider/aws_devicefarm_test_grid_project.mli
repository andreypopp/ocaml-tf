(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_devicefarm_test_grid_project__vpc_config
type aws_devicefarm_test_grid_project

val aws_devicefarm_test_grid_project :
  ?description:string ->
  ?tags:(string * string) list ->
  name:string ->
  vpc_config:aws_devicefarm_test_grid_project__vpc_config list ->
  string ->
  unit

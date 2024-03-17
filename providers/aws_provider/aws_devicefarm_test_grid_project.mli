(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_devicefarm_test_grid_project__vpc_config
type aws_devicefarm_test_grid_project

val aws_devicefarm_test_grid_project :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  vpc_config:aws_devicefarm_test_grid_project__vpc_config list ->
  string ->
  unit

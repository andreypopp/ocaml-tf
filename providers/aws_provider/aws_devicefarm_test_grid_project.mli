(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_devicefarm_test_grid_project__vpc_config
type aws_devicefarm_test_grid_project

val aws_devicefarm_test_grid_project :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  vpc_config:aws_devicefarm_test_grid_project__vpc_config list ->
  string ->
  unit

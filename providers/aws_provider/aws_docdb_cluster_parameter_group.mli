(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_docdb_cluster_parameter_group__parameter
type aws_docdb_cluster_parameter_group

val aws_docdb_cluster_parameter_group :
  ?description:string ->
  ?tags:(string * string) list ->
  family:string ->
  parameter:aws_docdb_cluster_parameter_group__parameter list ->
  string ->
  unit

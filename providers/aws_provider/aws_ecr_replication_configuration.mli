(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecr_replication_configuration__replication_configuration__rule__destination

type aws_ecr_replication_configuration__replication_configuration__rule__repository_filter

type aws_ecr_replication_configuration__replication_configuration__rule

type aws_ecr_replication_configuration__replication_configuration
type aws_ecr_replication_configuration

val aws_ecr_replication_configuration :
  ?id:string prop ->
  replication_configuration:
    aws_ecr_replication_configuration__replication_configuration list ->
  string ->
  unit

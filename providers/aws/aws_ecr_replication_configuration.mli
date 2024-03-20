(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type replication_configuration__rule__destination

val replication_configuration__rule__destination :
  region:string prop ->
  registry_id:string prop ->
  unit ->
  replication_configuration__rule__destination

type replication_configuration__rule__repository_filter

val replication_configuration__rule__repository_filter :
  filter:string prop ->
  filter_type:string prop ->
  unit ->
  replication_configuration__rule__repository_filter

type replication_configuration__rule

val replication_configuration__rule :
  destination:replication_configuration__rule__destination list ->
  repository_filter:
    replication_configuration__rule__repository_filter list ->
  unit ->
  replication_configuration__rule

type replication_configuration

val replication_configuration :
  rule:replication_configuration__rule list ->
  unit ->
  replication_configuration

type aws_ecr_replication_configuration

val aws_ecr_replication_configuration :
  ?id:string prop ->
  replication_configuration:replication_configuration list ->
  unit ->
  aws_ecr_replication_configuration

val yojson_of_aws_ecr_replication_configuration :
  aws_ecr_replication_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; registry_id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  replication_configuration:replication_configuration list ->
  string ->
  t

val make :
  ?id:string prop ->
  replication_configuration:replication_configuration list ->
  string ->
  t Tf_core.resource

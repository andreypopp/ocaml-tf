(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_keyspaces_table__capacity_specification
type aws_keyspaces_table__client_side_timestamps
type aws_keyspaces_table__comment
type aws_keyspaces_table__encryption_specification
type aws_keyspaces_table__point_in_time_recovery
type aws_keyspaces_table__schema_definition__clustering_key
type aws_keyspaces_table__schema_definition__column
type aws_keyspaces_table__schema_definition__partition_key
type aws_keyspaces_table__schema_definition__static_column
type aws_keyspaces_table__schema_definition
type aws_keyspaces_table__timeouts
type aws_keyspaces_table__ttl
type aws_keyspaces_table

val aws_keyspaces_table :
  ?default_time_to_live:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_keyspaces_table__timeouts ->
  keyspace_name:string prop ->
  table_name:string prop ->
  capacity_specification:
    aws_keyspaces_table__capacity_specification list ->
  client_side_timestamps:
    aws_keyspaces_table__client_side_timestamps list ->
  comment:aws_keyspaces_table__comment list ->
  encryption_specification:
    aws_keyspaces_table__encryption_specification list ->
  point_in_time_recovery:
    aws_keyspaces_table__point_in_time_recovery list ->
  schema_definition:aws_keyspaces_table__schema_definition list ->
  ttl:aws_keyspaces_table__ttl list ->
  string ->
  unit

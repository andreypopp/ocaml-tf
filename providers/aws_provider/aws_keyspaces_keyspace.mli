(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_keyspaces_keyspace__timeouts
type aws_keyspaces_keyspace

val aws_keyspaces_keyspace :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_keyspaces_keyspace__timeouts ->
  name:string ->
  string ->
  unit

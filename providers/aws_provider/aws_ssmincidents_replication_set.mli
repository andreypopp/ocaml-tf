(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssmincidents_replication_set__region
type aws_ssmincidents_replication_set__timeouts
type aws_ssmincidents_replication_set

val aws_ssmincidents_replication_set :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_ssmincidents_replication_set__timeouts ->
  region:aws_ssmincidents_replication_set__region list ->
  string ->
  unit

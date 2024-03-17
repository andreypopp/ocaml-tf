(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssmincidents_replication_set__region
type aws_ssmincidents_replication_set__timeouts
type aws_ssmincidents_replication_set

val aws_ssmincidents_replication_set :
  ?tags:(string * string) list ->
  ?timeouts:aws_ssmincidents_replication_set__timeouts ->
  region:aws_ssmincidents_replication_set__region list ->
  string ->
  unit

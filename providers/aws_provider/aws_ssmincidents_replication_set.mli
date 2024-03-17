(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssmincidents_replication_set__region
type aws_ssmincidents_replication_set__timeouts
type aws_ssmincidents_replication_set

val aws_ssmincidents_replication_set :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ssmincidents_replication_set__timeouts ->
  region:aws_ssmincidents_replication_set__region list ->
  string ->
  unit

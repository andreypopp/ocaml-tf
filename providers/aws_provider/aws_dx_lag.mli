(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_lag

val aws_dx_lag :
  ?connection_id:string ->
  ?force_destroy:bool ->
  ?id:string ->
  ?provider_name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  connections_bandwidth:string ->
  location:string ->
  name:string ->
  string ->
  unit

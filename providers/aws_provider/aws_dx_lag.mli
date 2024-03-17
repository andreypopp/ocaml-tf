(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_lag

val aws_dx_lag :
  ?connection_id:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?provider_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  connections_bandwidth:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  unit

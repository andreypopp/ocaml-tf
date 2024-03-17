(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dataexchange_data_set

val aws_dataexchange_data_set :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  asset_type:string prop ->
  description:string prop ->
  name:string prop ->
  string ->
  unit

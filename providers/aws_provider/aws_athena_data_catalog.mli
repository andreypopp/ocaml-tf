(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_athena_data_catalog

val aws_athena_data_catalog :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  description:string prop ->
  name:string prop ->
  parameters:(string * string prop) list ->
  type_:string prop ->
  string ->
  unit

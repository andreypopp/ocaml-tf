(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_macie2_custom_data_identifier

val aws_macie2_custom_data_identifier :
  ?description:string ->
  ?id:string ->
  ?ignore_words:string list ->
  ?keywords:string list ->
  ?maximum_match_distance:float ->
  ?name:string ->
  ?name_prefix:string ->
  ?regex:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  string ->
  unit

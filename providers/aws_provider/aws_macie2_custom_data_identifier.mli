(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_macie2_custom_data_identifier

val aws_macie2_custom_data_identifier :
  ?description:string prop ->
  ?id:string prop ->
  ?ignore_words:string prop list ->
  ?keywords:string prop list ->
  ?maximum_match_distance:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?regex:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  unit

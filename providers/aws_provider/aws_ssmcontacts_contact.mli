(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssmcontacts_contact

val aws_ssmcontacts_contact :
  ?display_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  alias:string prop ->
  type_:string prop ->
  string ->
  unit

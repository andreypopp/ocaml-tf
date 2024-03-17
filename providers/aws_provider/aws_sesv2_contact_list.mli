(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_contact_list__topic
type aws_sesv2_contact_list

val aws_sesv2_contact_list :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  contact_list_name:string prop ->
  topic:aws_sesv2_contact_list__topic list ->
  string ->
  unit

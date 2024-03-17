(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_contact_list__topic
type aws_sesv2_contact_list

val aws_sesv2_contact_list :
  ?description:string ->
  ?tags:(string * string) list ->
  contact_list_name:string ->
  topic:aws_sesv2_contact_list__topic list ->
  string ->
  unit

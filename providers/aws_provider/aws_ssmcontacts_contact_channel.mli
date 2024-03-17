(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssmcontacts_contact_channel__delivery_address
type aws_ssmcontacts_contact_channel

val aws_ssmcontacts_contact_channel :
  ?id:string ->
  contact_id:string ->
  name:string ->
  type_:string ->
  delivery_address:
    aws_ssmcontacts_contact_channel__delivery_address list ->
  string ->
  unit

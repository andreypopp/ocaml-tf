(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssmcontacts_contact_channel__delivery_address
type aws_ssmcontacts_contact_channel

val aws_ssmcontacts_contact_channel :
  ?id:string prop ->
  contact_id:string prop ->
  name:string prop ->
  type_:string prop ->
  delivery_address:
    aws_ssmcontacts_contact_channel__delivery_address list ->
  string ->
  unit

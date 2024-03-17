(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_account_alternate_contact__timeouts
type aws_account_alternate_contact

val aws_account_alternate_contact :
  ?account_id:string ->
  ?id:string ->
  ?timeouts:aws_account_alternate_contact__timeouts ->
  alternate_contact_type:string ->
  email_address:string ->
  name:string ->
  phone_number:string ->
  title:string ->
  string ->
  unit

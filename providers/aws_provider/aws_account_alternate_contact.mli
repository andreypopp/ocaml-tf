(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_account_alternate_contact__timeouts
type aws_account_alternate_contact

type t = private {
  account_id : string prop;
  alternate_contact_type : string prop;
  email_address : string prop;
  id : string prop;
  name : string prop;
  phone_number : string prop;
  title : string prop;
}

val aws_account_alternate_contact :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:aws_account_alternate_contact__timeouts ->
  alternate_contact_type:string prop ->
  email_address:string prop ->
  name:string prop ->
  phone_number:string prop ->
  title:string prop ->
  string ->
  t

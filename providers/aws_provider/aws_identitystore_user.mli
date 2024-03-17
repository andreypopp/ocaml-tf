(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_identitystore_user__addresses
type aws_identitystore_user__emails
type aws_identitystore_user__name
type aws_identitystore_user__phone_numbers

type aws_identitystore_user__external_ids = {
  id : string;  (** id *)
  issuer : string;  (** issuer *)
}

type aws_identitystore_user

val aws_identitystore_user :
  ?id:string ->
  ?locale:string ->
  ?nickname:string ->
  ?preferred_language:string ->
  ?profile_url:string ->
  ?timezone:string ->
  ?title:string ->
  ?user_type:string ->
  display_name:string ->
  identity_store_id:string ->
  user_name:string ->
  addresses:aws_identitystore_user__addresses list ->
  emails:aws_identitystore_user__emails list ->
  name:aws_identitystore_user__name list ->
  phone_numbers:aws_identitystore_user__phone_numbers list ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_identitystore_user__addresses
type aws_identitystore_user__emails
type aws_identitystore_user__name
type aws_identitystore_user__phone_numbers

type aws_identitystore_user__external_ids = {
  id : string prop;  (** id *)
  issuer : string prop;  (** issuer *)
}

type aws_identitystore_user

type t = private {
  display_name : string prop;
  external_ids : aws_identitystore_user__external_ids list prop;
  id : string prop;
  identity_store_id : string prop;
  locale : string prop;
  nickname : string prop;
  preferred_language : string prop;
  profile_url : string prop;
  timezone : string prop;
  title : string prop;
  user_id : string prop;
  user_name : string prop;
  user_type : string prop;
}

val aws_identitystore_user :
  ?id:string prop ->
  ?locale:string prop ->
  ?nickname:string prop ->
  ?preferred_language:string prop ->
  ?profile_url:string prop ->
  ?timezone:string prop ->
  ?title:string prop ->
  ?user_type:string prop ->
  display_name:string prop ->
  identity_store_id:string prop ->
  user_name:string prop ->
  addresses:aws_identitystore_user__addresses list ->
  emails:aws_identitystore_user__emails list ->
  name:aws_identitystore_user__name list ->
  phone_numbers:aws_identitystore_user__phone_numbers list ->
  string ->
  t

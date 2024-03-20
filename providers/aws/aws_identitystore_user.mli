(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type external_ids = {
  id : string prop;  (** id *)
  issuer : string prop;  (** issuer *)
}

type addresses

val addresses :
  ?country:string prop ->
  ?formatted:string prop ->
  ?locality:string prop ->
  ?postal_code:string prop ->
  ?primary:bool prop ->
  ?region:string prop ->
  ?street_address:string prop ->
  ?type_:string prop ->
  unit ->
  addresses

type emails

val emails :
  ?primary:bool prop ->
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  emails

type name

val name :
  ?formatted:string prop ->
  ?honorific_prefix:string prop ->
  ?honorific_suffix:string prop ->
  ?middle_name:string prop ->
  family_name:string prop ->
  given_name:string prop ->
  unit ->
  name

type phone_numbers

val phone_numbers :
  ?primary:bool prop ->
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  phone_numbers

type aws_identitystore_user

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
  addresses:addresses list ->
  emails:emails list ->
  name:name list ->
  phone_numbers:phone_numbers list ->
  unit ->
  aws_identitystore_user

val yojson_of_aws_identitystore_user : aws_identitystore_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  external_ids : external_ids list prop;
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

val register :
  ?tf_module:tf_module ->
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
  addresses:addresses list ->
  emails:emails list ->
  name:name list ->
  phone_numbers:phone_numbers list ->
  string ->
  t

val make :
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
  addresses:addresses list ->
  emails:emails list ->
  name:name list ->
  phone_numbers:phone_numbers list ->
  string ->
  t Tf_core.resource

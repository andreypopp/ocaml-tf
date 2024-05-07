(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type addresses = {
  country : string prop;  (** country *)
  formatted : string prop;  (** formatted *)
  locality : string prop;  (** locality *)
  postal_code : string prop;  (** postal_code *)
  primary : bool prop;  (** primary *)
  region : string prop;  (** region *)
  street_address : string prop;  (** street_address *)
  type_ : string prop; [@key "type"]  (** type *)
}

type emails = {
  primary : bool prop;  (** primary *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type external_ids = {
  id : string prop;  (** id *)
  issuer : string prop;  (** issuer *)
}

type name = {
  family_name : string prop;  (** family_name *)
  formatted : string prop;  (** formatted *)
  given_name : string prop;  (** given_name *)
  honorific_prefix : string prop;  (** honorific_prefix *)
  honorific_suffix : string prop;  (** honorific_suffix *)
  middle_name : string prop;  (** middle_name *)
}

type phone_numbers = {
  primary : bool prop;  (** primary *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type alternate_identifier__external_id

val alternate_identifier__external_id :
  id:string prop ->
  issuer:string prop ->
  unit ->
  alternate_identifier__external_id

type alternate_identifier__unique_attribute

val alternate_identifier__unique_attribute :
  attribute_path:string prop ->
  attribute_value:string prop ->
  unit ->
  alternate_identifier__unique_attribute

type alternate_identifier

val alternate_identifier :
  ?external_id:alternate_identifier__external_id list ->
  ?unique_attribute:alternate_identifier__unique_attribute list ->
  unit ->
  alternate_identifier

type filter

val filter :
  attribute_path:string prop ->
  attribute_value:string prop ->
  unit ->
  filter

type aws_identitystore_user

val aws_identitystore_user :
  ?id:string prop ->
  ?user_id:string prop ->
  ?alternate_identifier:alternate_identifier list ->
  ?filter:filter list ->
  identity_store_id:string prop ->
  unit ->
  aws_identitystore_user

val yojson_of_aws_identitystore_user : aws_identitystore_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  addresses : addresses list prop;
  display_name : string prop;
  emails : emails list prop;
  external_ids : external_ids list prop;
  id : string prop;
  identity_store_id : string prop;
  locale : string prop;
  name : name list prop;
  nickname : string prop;
  phone_numbers : phone_numbers list prop;
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
  ?user_id:string prop ->
  ?alternate_identifier:alternate_identifier list ->
  ?filter:filter list ->
  identity_store_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?user_id:string prop ->
  ?alternate_identifier:alternate_identifier list ->
  ?filter:filter list ->
  identity_store_id:string prop ->
  string ->
  t Tf_core.resource

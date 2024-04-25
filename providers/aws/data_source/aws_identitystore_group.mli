(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type external_ids = {
  id : string prop;  (** id *)
  issuer : string prop;  (** issuer *)
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

type aws_identitystore_group

val aws_identitystore_group :
  ?group_id:string prop ->
  ?id:string prop ->
  ?alternate_identifier:alternate_identifier list ->
  ?filter:filter list ->
  identity_store_id:string prop ->
  unit ->
  aws_identitystore_group

val yojson_of_aws_identitystore_group :
  aws_identitystore_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  external_ids : external_ids list prop;
  group_id : string prop;
  id : string prop;
  identity_store_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?group_id:string prop ->
  ?id:string prop ->
  ?alternate_identifier:alternate_identifier list ->
  ?filter:filter list ->
  identity_store_id:string prop ->
  string ->
  t

val make :
  ?group_id:string prop ->
  ?id:string prop ->
  ?alternate_identifier:alternate_identifier list ->
  ?filter:filter list ->
  identity_store_id:string prop ->
  string ->
  t Tf_core.resource

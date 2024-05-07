(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_entities__items__field_patterns

val encryption_entities__items__field_patterns :
  ?items:string prop list ->
  unit ->
  encryption_entities__items__field_patterns

type encryption_entities__items

val encryption_entities__items :
  provider_id:string prop ->
  public_key_id:string prop ->
  field_patterns:encryption_entities__items__field_patterns list ->
  unit ->
  encryption_entities__items

type encryption_entities

val encryption_entities :
  items:encryption_entities__items list ->
  unit ->
  encryption_entities

type aws_cloudfront_field_level_encryption_profile

val aws_cloudfront_field_level_encryption_profile :
  ?comment:string prop ->
  ?id:string prop ->
  name:string prop ->
  encryption_entities:encryption_entities list ->
  unit ->
  aws_cloudfront_field_level_encryption_profile

val yojson_of_aws_cloudfront_field_level_encryption_profile :
  aws_cloudfront_field_level_encryption_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  caller_reference : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?id:string prop ->
  name:string prop ->
  encryption_entities:encryption_entities list ->
  string ->
  t

val make :
  ?comment:string prop ->
  ?id:string prop ->
  name:string prop ->
  encryption_entities:encryption_entities list ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_field_level_encryption_profile__encryption_entities__items__field_patterns

type aws_cloudfront_field_level_encryption_profile__encryption_entities__items

type aws_cloudfront_field_level_encryption_profile__encryption_entities

type aws_cloudfront_field_level_encryption_profile

val aws_cloudfront_field_level_encryption_profile :
  ?comment:string prop ->
  ?id:string prop ->
  name:string prop ->
  encryption_entities:
    aws_cloudfront_field_level_encryption_profile__encryption_entities
    list ->
  string ->
  unit

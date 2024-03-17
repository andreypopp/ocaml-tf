(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_field_level_encryption_profile__encryption_entities__items__field_patterns = {
  items : string list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_profile__encryption_entities__items__field_patterns *)

type aws_cloudfront_field_level_encryption_profile__encryption_entities__items = {
  provider_id : string;  (** provider_id *)
  public_key_id : string;  (** public_key_id *)
  field_patterns :
    aws_cloudfront_field_level_encryption_profile__encryption_entities__items__field_patterns
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_profile__encryption_entities__items *)

type aws_cloudfront_field_level_encryption_profile__encryption_entities = {
  items :
    aws_cloudfront_field_level_encryption_profile__encryption_entities__items
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_profile__encryption_entities *)

type aws_cloudfront_field_level_encryption_profile = {
  comment : string option; [@option]  (** comment *)
  name : string;  (** name *)
  encryption_entities :
    aws_cloudfront_field_level_encryption_profile__encryption_entities
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_profile *)

let aws_cloudfront_field_level_encryption_profile ?comment ~name
    ~encryption_entities __resource_id =
  let __resource_type =
    "aws_cloudfront_field_level_encryption_profile"
  in
  let __resource = { comment; name; encryption_entities } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_field_level_encryption_profile
       __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_field_level_encryption_profile__encryption_entities__items__field_patterns = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_profile__encryption_entities__items__field_patterns *)

type aws_cloudfront_field_level_encryption_profile__encryption_entities__items = {
  provider_id : string prop;  (** provider_id *)
  public_key_id : string prop;  (** public_key_id *)
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
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  encryption_entities :
    aws_cloudfront_field_level_encryption_profile__encryption_entities
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_profile *)

type t = {
  caller_reference : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
}

let aws_cloudfront_field_level_encryption_profile ?comment ?id ~name
    ~encryption_entities __resource_id =
  let __resource_type =
    "aws_cloudfront_field_level_encryption_profile"
  in
  let __resource =
    ({ comment; id; name; encryption_entities }
      : aws_cloudfront_field_level_encryption_profile)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_field_level_encryption_profile
       __resource);
  let __resource_attributes =
    ({
       caller_reference =
         Prop.computed __resource_type __resource_id
           "caller_reference";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes

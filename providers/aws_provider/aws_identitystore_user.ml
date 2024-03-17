(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_identitystore_user__addresses = {
  country : string prop option; [@option]  (** country *)
  formatted : string prop option; [@option]  (** formatted *)
  locality : string prop option; [@option]  (** locality *)
  postal_code : string prop option; [@option]  (** postal_code *)
  primary : bool prop option; [@option]  (** primary *)
  region : string prop option; [@option]  (** region *)
  street_address : string prop option; [@option]
      (** street_address *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_identitystore_user__addresses *)

type aws_identitystore_user__emails = {
  primary : bool prop option; [@option]  (** primary *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_identitystore_user__emails *)

type aws_identitystore_user__name = {
  family_name : string prop;  (** family_name *)
  formatted : string prop option; [@option]  (** formatted *)
  given_name : string prop;  (** given_name *)
  honorific_prefix : string prop option; [@option]
      (** honorific_prefix *)
  honorific_suffix : string prop option; [@option]
      (** honorific_suffix *)
  middle_name : string prop option; [@option]  (** middle_name *)
}
[@@deriving yojson_of]
(** aws_identitystore_user__name *)

type aws_identitystore_user__phone_numbers = {
  primary : bool prop option; [@option]  (** primary *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_identitystore_user__phone_numbers *)

type aws_identitystore_user__external_ids = {
  id : string prop;  (** id *)
  issuer : string prop;  (** issuer *)
}
[@@deriving yojson_of]

type aws_identitystore_user = {
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  identity_store_id : string prop;  (** identity_store_id *)
  locale : string prop option; [@option]  (** locale *)
  nickname : string prop option; [@option]  (** nickname *)
  preferred_language : string prop option; [@option]
      (** preferred_language *)
  profile_url : string prop option; [@option]  (** profile_url *)
  timezone : string prop option; [@option]  (** timezone *)
  title : string prop option; [@option]  (** title *)
  user_name : string prop;  (** user_name *)
  user_type : string prop option; [@option]  (** user_type *)
  addresses : aws_identitystore_user__addresses list;
  emails : aws_identitystore_user__emails list;
  name : aws_identitystore_user__name list;
  phone_numbers : aws_identitystore_user__phone_numbers list;
}
[@@deriving yojson_of]
(** aws_identitystore_user *)

type t = {
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

let aws_identitystore_user ?id ?locale ?nickname ?preferred_language
    ?profile_url ?timezone ?title ?user_type ~display_name
    ~identity_store_id ~user_name ~addresses ~emails ~name
    ~phone_numbers __resource_id =
  let __resource_type = "aws_identitystore_user" in
  let __resource =
    ({
       display_name;
       id;
       identity_store_id;
       locale;
       nickname;
       preferred_language;
       profile_url;
       timezone;
       title;
       user_name;
       user_type;
       addresses;
       emails;
       name;
       phone_numbers;
     }
      : aws_identitystore_user)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_identitystore_user __resource);
  let __resource_attributes =
    ({
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       external_ids =
         Prop.computed __resource_type __resource_id "external_ids";
       id = Prop.computed __resource_type __resource_id "id";
       identity_store_id =
         Prop.computed __resource_type __resource_id
           "identity_store_id";
       locale = Prop.computed __resource_type __resource_id "locale";
       nickname =
         Prop.computed __resource_type __resource_id "nickname";
       preferred_language =
         Prop.computed __resource_type __resource_id
           "preferred_language";
       profile_url =
         Prop.computed __resource_type __resource_id "profile_url";
       timezone =
         Prop.computed __resource_type __resource_id "timezone";
       title = Prop.computed __resource_type __resource_id "title";
       user_id =
         Prop.computed __resource_type __resource_id "user_id";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
       user_type =
         Prop.computed __resource_type __resource_id "user_type";
     }
      : t)
  in
  __resource_attributes

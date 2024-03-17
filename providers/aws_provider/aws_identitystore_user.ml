(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_identitystore_user__addresses = {
  country : string option; [@option]  (** country *)
  formatted : string option; [@option]  (** formatted *)
  locality : string option; [@option]  (** locality *)
  postal_code : string option; [@option]  (** postal_code *)
  primary : bool option; [@option]  (** primary *)
  region : string option; [@option]  (** region *)
  street_address : string option; [@option]  (** street_address *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_identitystore_user__addresses *)

type aws_identitystore_user__emails = {
  primary : bool option; [@option]  (** primary *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_identitystore_user__emails *)

type aws_identitystore_user__name = {
  family_name : string;  (** family_name *)
  formatted : string option; [@option]  (** formatted *)
  given_name : string;  (** given_name *)
  honorific_prefix : string option; [@option]
      (** honorific_prefix *)
  honorific_suffix : string option; [@option]
      (** honorific_suffix *)
  middle_name : string option; [@option]  (** middle_name *)
}
[@@deriving yojson_of]
(** aws_identitystore_user__name *)

type aws_identitystore_user__phone_numbers = {
  primary : bool option; [@option]  (** primary *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_identitystore_user__phone_numbers *)

type aws_identitystore_user__external_ids = {
  id : string;  (** id *)
  issuer : string;  (** issuer *)
}
[@@deriving yojson_of]

type aws_identitystore_user = {
  display_name : string;  (** display_name *)
  identity_store_id : string;  (** identity_store_id *)
  locale : string option; [@option]  (** locale *)
  nickname : string option; [@option]  (** nickname *)
  preferred_language : string option; [@option]
      (** preferred_language *)
  profile_url : string option; [@option]  (** profile_url *)
  timezone : string option; [@option]  (** timezone *)
  title : string option; [@option]  (** title *)
  user_name : string;  (** user_name *)
  user_type : string option; [@option]  (** user_type *)
  addresses : aws_identitystore_user__addresses list;
  emails : aws_identitystore_user__emails list;
  name : aws_identitystore_user__name list;
  phone_numbers : aws_identitystore_user__phone_numbers list;
}
[@@deriving yojson_of]
(** aws_identitystore_user *)

let aws_identitystore_user ?locale ?nickname ?preferred_language
    ?profile_url ?timezone ?title ?user_type ~display_name
    ~identity_store_id ~user_name ~addresses ~emails ~name
    ~phone_numbers __resource_id =
  let __resource_type = "aws_identitystore_user" in
  let __resource =
    {
      display_name;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_identitystore_user __resource);
  ()

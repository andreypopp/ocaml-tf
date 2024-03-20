(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type addresses = {
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
(** addresses *)

type emails = {
  primary : bool prop option; [@option]  (** primary *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** emails *)

type name = {
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
(** name *)

type phone_numbers = {
  primary : bool prop option; [@option]  (** primary *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** phone_numbers *)

type external_ids = {
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
  addresses : addresses list;
  emails : emails list;
  name : name list;
  phone_numbers : phone_numbers list;
}
[@@deriving yojson_of]
(** aws_identitystore_user *)

let addresses ?country ?formatted ?locality ?postal_code ?primary
    ?region ?street_address ?type_ () : addresses =
  {
    country;
    formatted;
    locality;
    postal_code;
    primary;
    region;
    street_address;
    type_;
  }

let emails ?primary ?type_ ?value () : emails =
  { primary; type_; value }

let name ?formatted ?honorific_prefix ?honorific_suffix ?middle_name
    ~family_name ~given_name () : name =
  {
    family_name;
    formatted;
    given_name;
    honorific_prefix;
    honorific_suffix;
    middle_name;
  }

let phone_numbers ?primary ?type_ ?value () : phone_numbers =
  { primary; type_; value }

let aws_identitystore_user ?id ?locale ?nickname ?preferred_language
    ?profile_url ?timezone ?title ?user_type ~display_name
    ~identity_store_id ~user_name ~addresses ~emails ~name
    ~phone_numbers () : aws_identitystore_user =
  {
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

type t = {
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

let make ?id ?locale ?nickname ?preferred_language ?profile_url
    ?timezone ?title ?user_type ~display_name ~identity_store_id
    ~user_name ~addresses ~emails ~name ~phone_numbers __id =
  let __type = "aws_identitystore_user" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       external_ids = Prop.computed __type __id "external_ids";
       id = Prop.computed __type __id "id";
       identity_store_id =
         Prop.computed __type __id "identity_store_id";
       locale = Prop.computed __type __id "locale";
       nickname = Prop.computed __type __id "nickname";
       preferred_language =
         Prop.computed __type __id "preferred_language";
       profile_url = Prop.computed __type __id "profile_url";
       timezone = Prop.computed __type __id "timezone";
       title = Prop.computed __type __id "title";
       user_id = Prop.computed __type __id "user_id";
       user_name = Prop.computed __type __id "user_name";
       user_type = Prop.computed __type __id "user_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_identitystore_user
        (aws_identitystore_user ?id ?locale ?nickname
           ?preferred_language ?profile_url ?timezone ?title
           ?user_type ~display_name ~identity_store_id ~user_name
           ~addresses ~emails ~name ~phone_numbers ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?locale ?nickname ?preferred_language
    ?profile_url ?timezone ?title ?user_type ~display_name
    ~identity_store_id ~user_name ~addresses ~emails ~name
    ~phone_numbers __id =
  let (r : _ Tf_core.resource) =
    make ?id ?locale ?nickname ?preferred_language ?profile_url
      ?timezone ?title ?user_type ~display_name ~identity_store_id
      ~user_name ~addresses ~emails ~name ~phone_numbers __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

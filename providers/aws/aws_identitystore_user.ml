(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type addresses = {
  country : string prop option; [@option]
  formatted : string prop option; [@option]
  locality : string prop option; [@option]
  postal_code : string prop option; [@option]
  primary : bool prop option; [@option]
  region : string prop option; [@option]
  street_address : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : addresses) -> ()

let yojson_of_addresses =
  (function
   | {
       country = v_country;
       formatted = v_formatted;
       locality = v_locality;
       postal_code = v_postal_code;
       primary = v_primary;
       region = v_region;
       street_address = v_street_address;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_street_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "street_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary", arg in
             bnd :: bnds
       in
       let bnds =
         match v_postal_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "postal_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locality with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locality", arg in
             bnd :: bnds
       in
       let bnds =
         match v_formatted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "formatted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_country with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "country", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : addresses -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addresses

[@@@deriving.end]

type emails = {
  primary : bool prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : emails) -> ()

let yojson_of_emails =
  (function
   | { primary = v_primary; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : emails -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_emails

[@@@deriving.end]

type name = {
  family_name : string prop;
  formatted : string prop option; [@option]
  given_name : string prop;
  honorific_prefix : string prop option; [@option]
  honorific_suffix : string prop option; [@option]
  middle_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : name) -> ()

let yojson_of_name =
  (function
   | {
       family_name = v_family_name;
       formatted = v_formatted;
       given_name = v_given_name;
       honorific_prefix = v_honorific_prefix;
       honorific_suffix = v_honorific_suffix;
       middle_name = v_middle_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_middle_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "middle_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_honorific_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "honorific_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_honorific_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "honorific_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_given_name in
         ("given_name", arg) :: bnds
       in
       let bnds =
         match v_formatted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "formatted", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_family_name in
         ("family_name", arg) :: bnds
       in
       `Assoc bnds
    : name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_name

[@@@deriving.end]

type phone_numbers = {
  primary : bool prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : phone_numbers) -> ()

let yojson_of_phone_numbers =
  (function
   | { primary = v_primary; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : phone_numbers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_phone_numbers

[@@@deriving.end]

type external_ids = { id : string prop; issuer : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : external_ids) -> ()

let yojson_of_external_ids =
  (function
   | { id = v_id; issuer = v_issuer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : external_ids -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_ids

[@@@deriving.end]

type aws_identitystore_user = {
  display_name : string prop;
  id : string prop option; [@option]
  identity_store_id : string prop;
  locale : string prop option; [@option]
  nickname : string prop option; [@option]
  preferred_language : string prop option; [@option]
  profile_url : string prop option; [@option]
  timezone : string prop option; [@option]
  title : string prop option; [@option]
  user_name : string prop;
  user_type : string prop option; [@option]
  addresses : addresses list;
  emails : emails list;
  name : name list;
  phone_numbers : phone_numbers list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_identitystore_user) -> ()

let yojson_of_aws_identitystore_user =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       identity_store_id = v_identity_store_id;
       locale = v_locale;
       nickname = v_nickname;
       preferred_language = v_preferred_language;
       profile_url = v_profile_url;
       timezone = v_timezone;
       title = v_title;
       user_name = v_user_name;
       user_type = v_user_type;
       addresses = v_addresses;
       emails = v_emails;
       name = v_name;
       phone_numbers = v_phone_numbers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_phone_numbers v_phone_numbers
         in
         ("phone_numbers", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_name v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_emails v_emails in
         ("emails", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_addresses v_addresses in
         ("addresses", arg) :: bnds
       in
       let bnds =
         match v_user_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profile_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_language", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nickname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nickname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locale with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locale", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_store_id
         in
         ("identity_store_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_identitystore_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_identitystore_user

[@@@deriving.end]

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

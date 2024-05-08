(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alternate_identifier__external_id = {
  id : string prop;
  issuer : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alternate_identifier__external_id) -> ()

let yojson_of_alternate_identifier__external_id =
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
    : alternate_identifier__external_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alternate_identifier__external_id

[@@@deriving.end]

type alternate_identifier__unique_attribute = {
  attribute_path : string prop;
  attribute_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alternate_identifier__unique_attribute) -> ()

let yojson_of_alternate_identifier__unique_attribute =
  (function
   | {
       attribute_path = v_attribute_path;
       attribute_value = v_attribute_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attribute_value
         in
         ("attribute_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attribute_path
         in
         ("attribute_path", arg) :: bnds
       in
       `Assoc bnds
    : alternate_identifier__unique_attribute ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alternate_identifier__unique_attribute

[@@@deriving.end]

type alternate_identifier = {
  external_id : alternate_identifier__external_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  unique_attribute : alternate_identifier__unique_attribute list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alternate_identifier) -> ()

let yojson_of_alternate_identifier =
  (function
   | {
       external_id = v_external_id;
       unique_attribute = v_unique_attribute;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_unique_attribute then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_alternate_identifier__unique_attribute)
               v_unique_attribute
           in
           let bnd = "unique_attribute", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_external_id then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_alternate_identifier__external_id)
               v_external_id
           in
           let bnd = "external_id", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : alternate_identifier -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alternate_identifier

[@@@deriving.end]

type filter = {
  attribute_path : string prop;
  attribute_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | {
       attribute_path = v_attribute_path;
       attribute_value = v_attribute_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attribute_value
         in
         ("attribute_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attribute_path
         in
         ("attribute_path", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type addresses = {
  country : string prop;
  formatted : string prop;
  locality : string prop;
  postal_code : string prop;
  primary : bool prop;
  region : string prop;
  street_address : string prop;
  type_ : string prop; [@key "type"]
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_street_address
         in
         ("street_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_primary in
         ("primary", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_postal_code in
         ("postal_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_locality in
         ("locality", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_formatted in
         ("formatted", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_country in
         ("country", arg) :: bnds
       in
       `Assoc bnds
    : addresses -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_addresses

[@@@deriving.end]

type emails = {
  primary : bool prop;
  type_ : string prop; [@key "type"]
  value : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_primary in
         ("primary", arg) :: bnds
       in
       `Assoc bnds
    : emails -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_emails

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

type name = {
  family_name : string prop;
  formatted : string prop;
  given_name : string prop;
  honorific_prefix : string prop;
  honorific_suffix : string prop;
  middle_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_middle_name in
         ("middle_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_honorific_suffix
         in
         ("honorific_suffix", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_honorific_prefix
         in
         ("honorific_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_given_name in
         ("given_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_formatted in
         ("formatted", arg) :: bnds
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
  primary : bool prop;
  type_ : string prop; [@key "type"]
  value : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_primary in
         ("primary", arg) :: bnds
       in
       `Assoc bnds
    : phone_numbers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_phone_numbers

[@@@deriving.end]

type aws_identitystore_user = {
  id : string prop option; [@option]
  identity_store_id : string prop;
  user_id : string prop option; [@option]
  alternate_identifier : alternate_identifier list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_identitystore_user) -> ()

let yojson_of_aws_identitystore_user =
  (function
   | {
       id = v_id;
       identity_store_id = v_identity_store_id;
       user_id = v_user_id;
       alternate_identifier = v_alternate_identifier;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alternate_identifier then bnds
         else
           let arg =
             (yojson_of_list yojson_of_alternate_identifier)
               v_alternate_identifier
           in
           let bnd = "alternate_identifier", arg in
           bnd :: bnds
       in
       let bnds =
         match v_user_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_id", arg in
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
       `Assoc bnds
    : aws_identitystore_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_identitystore_user

[@@@deriving.end]

let alternate_identifier__external_id ~id ~issuer () :
    alternate_identifier__external_id =
  { id; issuer }

let alternate_identifier__unique_attribute ~attribute_path
    ~attribute_value () : alternate_identifier__unique_attribute =
  { attribute_path; attribute_value }

let alternate_identifier ?(external_id = []) ?(unique_attribute = [])
    () : alternate_identifier =
  { external_id; unique_attribute }

let filter ~attribute_path ~attribute_value () : filter =
  { attribute_path; attribute_value }

let aws_identitystore_user ?id ?user_id ?(alternate_identifier = [])
    ?(filter = []) ~identity_store_id () : aws_identitystore_user =
  { id; identity_store_id; user_id; alternate_identifier; filter }

type t = {
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

let make ?id ?user_id ?(alternate_identifier = []) ?(filter = [])
    ~identity_store_id __id =
  let __type = "aws_identitystore_user" in
  let __attrs =
    ({
       tf_name = __id;
       addresses = Prop.computed __type __id "addresses";
       display_name = Prop.computed __type __id "display_name";
       emails = Prop.computed __type __id "emails";
       external_ids = Prop.computed __type __id "external_ids";
       id = Prop.computed __type __id "id";
       identity_store_id =
         Prop.computed __type __id "identity_store_id";
       locale = Prop.computed __type __id "locale";
       name = Prop.computed __type __id "name";
       nickname = Prop.computed __type __id "nickname";
       phone_numbers = Prop.computed __type __id "phone_numbers";
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
        (aws_identitystore_user ?id ?user_id ~alternate_identifier
           ~filter ~identity_store_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?user_id ?(alternate_identifier = [])
    ?(filter = []) ~identity_store_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?user_id ~alternate_identifier ~filter
      ~identity_store_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

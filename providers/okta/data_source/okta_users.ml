(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type search = {
  comparison : string prop option; [@option]
  expression : string prop option; [@option]
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : search) -> ()

let yojson_of_search =
  (function
   | {
       comparison = v_comparison;
       expression = v_expression;
       name = v_name;
       value = v_value;
     } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comparison with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comparison", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : search -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_search

[@@@deriving.end]

type users = {
  admin_roles : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  city : string prop;
  cost_center : string prop;
  country_code : string prop;
  custom_profile_attributes : string prop;
  department : string prop;
  display_name : string prop;
  division : string prop;
  email : string prop;
  employee_number : string prop;
  first_name : string prop;
  group_memberships : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  honorific_prefix : string prop;
  honorific_suffix : string prop;
  id : string prop;
  last_name : string prop;
  locale : string prop;
  login : string prop;
  manager : string prop;
  manager_id : string prop;
  middle_name : string prop;
  mobile_phone : string prop;
  nick_name : string prop;
  organization : string prop;
  postal_address : string prop;
  preferred_language : string prop;
  primary_phone : string prop;
  profile_url : string prop;
  roles : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  second_email : string prop;
  state : string prop;
  status : string prop;
  street_address : string prop;
  timezone : string prop;
  title : string prop;
  user_type : string prop;
  zip_code : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : users) -> ()

let yojson_of_users =
  (function
   | {
       admin_roles = v_admin_roles;
       city = v_city;
       cost_center = v_cost_center;
       country_code = v_country_code;
       custom_profile_attributes = v_custom_profile_attributes;
       department = v_department;
       display_name = v_display_name;
       division = v_division;
       email = v_email;
       employee_number = v_employee_number;
       first_name = v_first_name;
       group_memberships = v_group_memberships;
       honorific_prefix = v_honorific_prefix;
       honorific_suffix = v_honorific_suffix;
       id = v_id;
       last_name = v_last_name;
       locale = v_locale;
       login = v_login;
       manager = v_manager;
       manager_id = v_manager_id;
       middle_name = v_middle_name;
       mobile_phone = v_mobile_phone;
       nick_name = v_nick_name;
       organization = v_organization;
       postal_address = v_postal_address;
       preferred_language = v_preferred_language;
       primary_phone = v_primary_phone;
       profile_url = v_profile_url;
       roles = v_roles;
       second_email = v_second_email;
       state = v_state;
       status = v_status;
       street_address = v_street_address;
       timezone = v_timezone;
       title = v_title;
       user_type = v_user_type;
       zip_code = v_zip_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zip_code in
         ("zip_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_type in
         ("user_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_timezone in
         ("timezone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_street_address
         in
         ("street_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_second_email in
         ("second_email", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_roles then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_roles
           in
           let bnd = "roles", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_profile_url in
         ("profile_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_primary_phone in
         ("primary_phone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_preferred_language
         in
         ("preferred_language", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_postal_address
         in
         ("postal_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_organization in
         ("organization", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_nick_name in
         ("nick_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mobile_phone in
         ("mobile_phone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_middle_name in
         ("middle_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_manager_id in
         ("manager_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_manager in
         ("manager", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_login in
         ("login", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_locale in
         ("locale", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_name in
         ("last_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
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
         if Stdlib.( = ) [] v_group_memberships then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_group_memberships
           in
           let bnd = "group_memberships", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_first_name in
         ("first_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_employee_number
         in
         ("employee_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_division in
         ("division", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_department in
         ("department", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_custom_profile_attributes
         in
         ("custom_profile_attributes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_country_code in
         ("country_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cost_center in
         ("cost_center", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_city in
         ("city", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_roles then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_admin_roles
           in
           let bnd = "admin_roles", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : users -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_users

[@@@deriving.end]

type okta_users = {
  compound_search_operator : string prop option; [@option]
  delay_read_seconds : string prop option; [@option]
  group_id : string prop option; [@option]
  id : string prop option; [@option]
  include_groups : bool prop option; [@option]
  include_roles : bool prop option; [@option]
  search : search list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_users) -> ()

let yojson_of_okta_users =
  (function
   | {
       compound_search_operator = v_compound_search_operator;
       delay_read_seconds = v_delay_read_seconds;
       group_id = v_group_id;
       id = v_id;
       include_groups = v_include_groups;
       include_roles = v_include_roles;
       search = v_search;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_search then bnds
         else
           let arg = (yojson_of_list yojson_of_search) v_search in
           let bnd = "search", arg in
           bnd :: bnds
       in
       let bnds =
         match v_include_roles with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_roles", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_groups", arg in
             bnd :: bnds
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
         match v_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delay_read_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delay_read_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compound_search_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compound_search_operator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_users -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_users

[@@@deriving.end]

let search ?comparison ?expression ?name ?value () : search =
  { comparison; expression; name; value }

let okta_users ?compound_search_operator ?delay_read_seconds
    ?group_id ?id ?include_groups ?include_roles ~search () :
    okta_users =
  {
    compound_search_operator;
    delay_read_seconds;
    group_id;
    id;
    include_groups;
    include_roles;
    search;
  }

type t = {
  tf_name : string;
  compound_search_operator : string prop;
  delay_read_seconds : string prop;
  group_id : string prop;
  id : string prop;
  include_groups : bool prop;
  include_roles : bool prop;
  users : users list prop;
}

let make ?compound_search_operator ?delay_read_seconds ?group_id ?id
    ?include_groups ?include_roles ~search __id =
  let __type = "okta_users" in
  let __attrs =
    ({
       tf_name = __id;
       compound_search_operator =
         Prop.computed __type __id "compound_search_operator";
       delay_read_seconds =
         Prop.computed __type __id "delay_read_seconds";
       group_id = Prop.computed __type __id "group_id";
       id = Prop.computed __type __id "id";
       include_groups = Prop.computed __type __id "include_groups";
       include_roles = Prop.computed __type __id "include_roles";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_users
        (okta_users ?compound_search_operator ?delay_read_seconds
           ?group_id ?id ?include_groups ?include_roles ~search ());
    attrs = __attrs;
  }

let register ?tf_module ?compound_search_operator ?delay_read_seconds
    ?group_id ?id ?include_groups ?include_roles ~search __id =
  let (r : _ Tf_core.resource) =
    make ?compound_search_operator ?delay_read_seconds ?group_id ?id
      ?include_groups ?include_roles ~search __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

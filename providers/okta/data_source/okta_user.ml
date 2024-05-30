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

type okta_user = {
  compound_search_operator : string prop option; [@option]
  delay_read_seconds : string prop option; [@option]
  id : string prop option; [@option]
  skip_groups : bool prop option; [@option]
  skip_roles : bool prop option; [@option]
  user_id : string prop option; [@option]
  search : search list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_user) -> ()

let yojson_of_okta_user =
  (function
   | {
       compound_search_operator = v_compound_search_operator;
       delay_read_seconds = v_delay_read_seconds;
       id = v_id;
       skip_groups = v_skip_groups;
       skip_roles = v_skip_roles;
       user_id = v_user_id;
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
         match v_user_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_roles with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_roles", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_groups", arg in
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
    : okta_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_user

[@@@deriving.end]

let search ?comparison ?expression ?name ?value () : search =
  { comparison; expression; name; value }

let okta_user ?compound_search_operator ?delay_read_seconds ?id
    ?skip_groups ?skip_roles ?user_id ~search () : okta_user =
  {
    compound_search_operator;
    delay_read_seconds;
    id;
    skip_groups;
    skip_roles;
    user_id;
    search;
  }

type t = {
  tf_name : string;
  admin_roles : string list prop;
  city : string prop;
  compound_search_operator : string prop;
  cost_center : string prop;
  country_code : string prop;
  custom_profile_attributes : string prop;
  delay_read_seconds : string prop;
  department : string prop;
  display_name : string prop;
  division : string prop;
  email : string prop;
  employee_number : string prop;
  first_name : string prop;
  group_memberships : string list prop;
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
  roles : string list prop;
  second_email : string prop;
  skip_groups : bool prop;
  skip_roles : bool prop;
  state : string prop;
  status : string prop;
  street_address : string prop;
  timezone : string prop;
  title : string prop;
  user_id : string prop;
  user_type : string prop;
  zip_code : string prop;
}

let make ?compound_search_operator ?delay_read_seconds ?id
    ?skip_groups ?skip_roles ?user_id ~search __id =
  let __type = "okta_user" in
  let __attrs =
    ({
       tf_name = __id;
       admin_roles = Prop.computed __type __id "admin_roles";
       city = Prop.computed __type __id "city";
       compound_search_operator =
         Prop.computed __type __id "compound_search_operator";
       cost_center = Prop.computed __type __id "cost_center";
       country_code = Prop.computed __type __id "country_code";
       custom_profile_attributes =
         Prop.computed __type __id "custom_profile_attributes";
       delay_read_seconds =
         Prop.computed __type __id "delay_read_seconds";
       department = Prop.computed __type __id "department";
       display_name = Prop.computed __type __id "display_name";
       division = Prop.computed __type __id "division";
       email = Prop.computed __type __id "email";
       employee_number = Prop.computed __type __id "employee_number";
       first_name = Prop.computed __type __id "first_name";
       group_memberships =
         Prop.computed __type __id "group_memberships";
       honorific_prefix =
         Prop.computed __type __id "honorific_prefix";
       honorific_suffix =
         Prop.computed __type __id "honorific_suffix";
       id = Prop.computed __type __id "id";
       last_name = Prop.computed __type __id "last_name";
       locale = Prop.computed __type __id "locale";
       login = Prop.computed __type __id "login";
       manager = Prop.computed __type __id "manager";
       manager_id = Prop.computed __type __id "manager_id";
       middle_name = Prop.computed __type __id "middle_name";
       mobile_phone = Prop.computed __type __id "mobile_phone";
       nick_name = Prop.computed __type __id "nick_name";
       organization = Prop.computed __type __id "organization";
       postal_address = Prop.computed __type __id "postal_address";
       preferred_language =
         Prop.computed __type __id "preferred_language";
       primary_phone = Prop.computed __type __id "primary_phone";
       profile_url = Prop.computed __type __id "profile_url";
       roles = Prop.computed __type __id "roles";
       second_email = Prop.computed __type __id "second_email";
       skip_groups = Prop.computed __type __id "skip_groups";
       skip_roles = Prop.computed __type __id "skip_roles";
       state = Prop.computed __type __id "state";
       status = Prop.computed __type __id "status";
       street_address = Prop.computed __type __id "street_address";
       timezone = Prop.computed __type __id "timezone";
       title = Prop.computed __type __id "title";
       user_id = Prop.computed __type __id "user_id";
       user_type = Prop.computed __type __id "user_type";
       zip_code = Prop.computed __type __id "zip_code";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_user
        (okta_user ?compound_search_operator ?delay_read_seconds ?id
           ?skip_groups ?skip_roles ?user_id ~search ());
    attrs = __attrs;
  }

let register ?tf_module ?compound_search_operator ?delay_read_seconds
    ?id ?skip_groups ?skip_roles ?user_id ~search __id =
  let (r : _ Tf_core.resource) =
    make ?compound_search_operator ?delay_read_seconds ?id
      ?skip_groups ?skip_roles ?user_id ~search __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

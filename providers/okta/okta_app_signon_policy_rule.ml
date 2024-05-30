(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type platform_include = {
  os_expression : string prop option; [@option]
  os_type : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : platform_include) -> ()

let yojson_of_platform_include =
  (function
   | {
       os_expression = v_os_expression;
       os_type = v_os_type;
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
         match v_os_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : platform_include -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_platform_include

[@@@deriving.end]

type okta_app_signon_policy_rule = {
  access : string prop option; [@option]
  constraints : string prop list option; [@option]
  custom_expression : string prop option; [@option]
  device_assurances_included : string prop list option; [@option]
  device_is_managed : bool prop option; [@option]
  device_is_registered : bool prop option; [@option]
  factor_mode : string prop option; [@option]
  groups_excluded : string prop list option; [@option]
  groups_included : string prop list option; [@option]
  id : string prop option; [@option]
  inactivity_period : string prop option; [@option]
  name : string prop;
  network_connection : string prop option; [@option]
  network_excludes : string prop list option; [@option]
  network_includes : string prop list option; [@option]
  policy_id : string prop;
  priority : float prop option; [@option]
  re_authentication_frequency : string prop option; [@option]
  risk_score : string prop option; [@option]
  status : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  user_types_excluded : string prop list option; [@option]
  user_types_included : string prop list option; [@option]
  users_excluded : string prop list option; [@option]
  users_included : string prop list option; [@option]
  platform_include : platform_include list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_signon_policy_rule) -> ()

let yojson_of_okta_app_signon_policy_rule =
  (function
   | {
       access = v_access;
       constraints = v_constraints;
       custom_expression = v_custom_expression;
       device_assurances_included = v_device_assurances_included;
       device_is_managed = v_device_is_managed;
       device_is_registered = v_device_is_registered;
       factor_mode = v_factor_mode;
       groups_excluded = v_groups_excluded;
       groups_included = v_groups_included;
       id = v_id;
       inactivity_period = v_inactivity_period;
       name = v_name;
       network_connection = v_network_connection;
       network_excludes = v_network_excludes;
       network_includes = v_network_includes;
       policy_id = v_policy_id;
       priority = v_priority;
       re_authentication_frequency = v_re_authentication_frequency;
       risk_score = v_risk_score;
       status = v_status;
       type_ = v_type_;
       user_types_excluded = v_user_types_excluded;
       user_types_included = v_user_types_included;
       users_excluded = v_users_excluded;
       users_included = v_users_included;
       platform_include = v_platform_include;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_platform_include then bnds
         else
           let arg =
             (yojson_of_list yojson_of_platform_include)
               v_platform_include
           in
           let bnd = "platform_include", arg in
           bnd :: bnds
       in
       let bnds =
         match v_users_included with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "users_included", arg in
             bnd :: bnds
       in
       let bnds =
         match v_users_excluded with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "users_excluded", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_types_included with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_types_included", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_types_excluded with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_types_excluded", arg in
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
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_risk_score with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "risk_score", arg in
             bnd :: bnds
       in
       let bnds =
         match v_re_authentication_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "re_authentication_frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_id in
         ("policy_id", arg) :: bnds
       in
       let bnds =
         match v_network_includes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_includes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_excludes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_connection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_connection", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_inactivity_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inactivity_period", arg in
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
         match v_groups_included with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "groups_included", arg in
             bnd :: bnds
       in
       let bnds =
         match v_groups_excluded with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "groups_excluded", arg in
             bnd :: bnds
       in
       let bnds =
         match v_factor_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "factor_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_is_registered with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "device_is_registered", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_is_managed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "device_is_managed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_assurances_included with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "device_assurances_included", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_expression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_constraints with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "constraints", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_app_signon_policy_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_signon_policy_rule

[@@@deriving.end]

let platform_include ?os_expression ?os_type ?type_ () :
    platform_include =
  { os_expression; os_type; type_ }

let okta_app_signon_policy_rule ?access ?constraints
    ?custom_expression ?device_assurances_included ?device_is_managed
    ?device_is_registered ?factor_mode ?groups_excluded
    ?groups_included ?id ?inactivity_period ?network_connection
    ?network_excludes ?network_includes ?priority
    ?re_authentication_frequency ?risk_score ?status ?type_
    ?user_types_excluded ?user_types_included ?users_excluded
    ?users_included ~name ~policy_id ~platform_include () :
    okta_app_signon_policy_rule =
  {
    access;
    constraints;
    custom_expression;
    device_assurances_included;
    device_is_managed;
    device_is_registered;
    factor_mode;
    groups_excluded;
    groups_included;
    id;
    inactivity_period;
    name;
    network_connection;
    network_excludes;
    network_includes;
    policy_id;
    priority;
    re_authentication_frequency;
    risk_score;
    status;
    type_;
    user_types_excluded;
    user_types_included;
    users_excluded;
    users_included;
    platform_include;
  }

type t = {
  tf_name : string;
  access : string prop;
  constraints : string list prop;
  custom_expression : string prop;
  device_assurances_included : string list prop;
  device_is_managed : bool prop;
  device_is_registered : bool prop;
  factor_mode : string prop;
  groups_excluded : string list prop;
  groups_included : string list prop;
  id : string prop;
  inactivity_period : string prop;
  name : string prop;
  network_connection : string prop;
  network_excludes : string list prop;
  network_includes : string list prop;
  policy_id : string prop;
  priority : float prop;
  re_authentication_frequency : string prop;
  risk_score : string prop;
  status : string prop;
  system : bool prop;
  type_ : string prop;
  user_types_excluded : string list prop;
  user_types_included : string list prop;
  users_excluded : string list prop;
  users_included : string list prop;
}

let make ?access ?constraints ?custom_expression
    ?device_assurances_included ?device_is_managed
    ?device_is_registered ?factor_mode ?groups_excluded
    ?groups_included ?id ?inactivity_period ?network_connection
    ?network_excludes ?network_includes ?priority
    ?re_authentication_frequency ?risk_score ?status ?type_
    ?user_types_excluded ?user_types_included ?users_excluded
    ?users_included ~name ~policy_id ~platform_include __id =
  let __type = "okta_app_signon_policy_rule" in
  let __attrs =
    ({
       tf_name = __id;
       access = Prop.computed __type __id "access";
       constraints = Prop.computed __type __id "constraints";
       custom_expression =
         Prop.computed __type __id "custom_expression";
       device_assurances_included =
         Prop.computed __type __id "device_assurances_included";
       device_is_managed =
         Prop.computed __type __id "device_is_managed";
       device_is_registered =
         Prop.computed __type __id "device_is_registered";
       factor_mode = Prop.computed __type __id "factor_mode";
       groups_excluded = Prop.computed __type __id "groups_excluded";
       groups_included = Prop.computed __type __id "groups_included";
       id = Prop.computed __type __id "id";
       inactivity_period =
         Prop.computed __type __id "inactivity_period";
       name = Prop.computed __type __id "name";
       network_connection =
         Prop.computed __type __id "network_connection";
       network_excludes =
         Prop.computed __type __id "network_excludes";
       network_includes =
         Prop.computed __type __id "network_includes";
       policy_id = Prop.computed __type __id "policy_id";
       priority = Prop.computed __type __id "priority";
       re_authentication_frequency =
         Prop.computed __type __id "re_authentication_frequency";
       risk_score = Prop.computed __type __id "risk_score";
       status = Prop.computed __type __id "status";
       system = Prop.computed __type __id "system";
       type_ = Prop.computed __type __id "type";
       user_types_excluded =
         Prop.computed __type __id "user_types_excluded";
       user_types_included =
         Prop.computed __type __id "user_types_included";
       users_excluded = Prop.computed __type __id "users_excluded";
       users_included = Prop.computed __type __id "users_included";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_signon_policy_rule
        (okta_app_signon_policy_rule ?access ?constraints
           ?custom_expression ?device_assurances_included
           ?device_is_managed ?device_is_registered ?factor_mode
           ?groups_excluded ?groups_included ?id ?inactivity_period
           ?network_connection ?network_excludes ?network_includes
           ?priority ?re_authentication_frequency ?risk_score ?status
           ?type_ ?user_types_excluded ?user_types_included
           ?users_excluded ?users_included ~name ~policy_id
           ~platform_include ());
    attrs = __attrs;
  }

let register ?tf_module ?access ?constraints ?custom_expression
    ?device_assurances_included ?device_is_managed
    ?device_is_registered ?factor_mode ?groups_excluded
    ?groups_included ?id ?inactivity_period ?network_connection
    ?network_excludes ?network_includes ?priority
    ?re_authentication_frequency ?risk_score ?status ?type_
    ?user_types_excluded ?user_types_included ?users_excluded
    ?users_included ~name ~policy_id ~platform_include __id =
  let (r : _ Tf_core.resource) =
    make ?access ?constraints ?custom_expression
      ?device_assurances_included ?device_is_managed
      ?device_is_registered ?factor_mode ?groups_excluded
      ?groups_included ?id ?inactivity_period ?network_connection
      ?network_excludes ?network_includes ?priority
      ?re_authentication_frequency ?risk_score ?status ?type_
      ?user_types_excluded ?user_types_included ?users_excluded
      ?users_included ~name ~policy_id ~platform_include __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

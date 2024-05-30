(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type factor_sequence__secondary_criteria = {
  factor_type : string prop;
  provider : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : factor_sequence__secondary_criteria) -> ()

let yojson_of_factor_sequence__secondary_criteria =
  (function
   | { factor_type = v_factor_type; provider = v_provider } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider in
         ("provider", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_factor_type in
         ("factor_type", arg) :: bnds
       in
       `Assoc bnds
    : factor_sequence__secondary_criteria ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_factor_sequence__secondary_criteria

[@@@deriving.end]

type factor_sequence = {
  primary_criteria_factor_type : string prop;
  primary_criteria_provider : string prop;
  secondary_criteria : factor_sequence__secondary_criteria list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : factor_sequence) -> ()

let yojson_of_factor_sequence =
  (function
   | {
       primary_criteria_factor_type = v_primary_criteria_factor_type;
       primary_criteria_provider = v_primary_criteria_provider;
       secondary_criteria = v_secondary_criteria;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secondary_criteria then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_factor_sequence__secondary_criteria)
               v_secondary_criteria
           in
           let bnd = "secondary_criteria", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_primary_criteria_provider
         in
         ("primary_criteria_provider", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_primary_criteria_factor_type
         in
         ("primary_criteria_factor_type", arg) :: bnds
       in
       `Assoc bnds
    : factor_sequence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_factor_sequence

[@@@deriving.end]

type okta_policy_rule_signon = {
  access : string prop option; [@option]
  authtype : string prop option; [@option]
  behaviors : string prop list option; [@option]
  id : string prop option; [@option]
  identity_provider : string prop option; [@option]
  identity_provider_ids : string prop list option; [@option]
  mfa_lifetime : float prop option; [@option]
  mfa_prompt : string prop option; [@option]
  mfa_remember_device : bool prop option; [@option]
  mfa_required : bool prop option; [@option]
  name : string prop;
  network_connection : string prop option; [@option]
  network_excludes : string prop list option; [@option]
  network_includes : string prop list option; [@option]
  policy_id : string prop option; [@option]
  primary_factor : string prop option; [@option]
  priority : float prop option; [@option]
  risc_level : string prop option; [@option]
  risk_level : string prop option; [@option]
  session_idle : float prop option; [@option]
  session_lifetime : float prop option; [@option]
  session_persistent : bool prop option; [@option]
  status : string prop option; [@option]
  users_excluded : string prop list option; [@option]
  factor_sequence : factor_sequence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy_rule_signon) -> ()

let yojson_of_okta_policy_rule_signon =
  (function
   | {
       access = v_access;
       authtype = v_authtype;
       behaviors = v_behaviors;
       id = v_id;
       identity_provider = v_identity_provider;
       identity_provider_ids = v_identity_provider_ids;
       mfa_lifetime = v_mfa_lifetime;
       mfa_prompt = v_mfa_prompt;
       mfa_remember_device = v_mfa_remember_device;
       mfa_required = v_mfa_required;
       name = v_name;
       network_connection = v_network_connection;
       network_excludes = v_network_excludes;
       network_includes = v_network_includes;
       policy_id = v_policy_id;
       primary_factor = v_primary_factor;
       priority = v_priority;
       risc_level = v_risc_level;
       risk_level = v_risk_level;
       session_idle = v_session_idle;
       session_lifetime = v_session_lifetime;
       session_persistent = v_session_persistent;
       status = v_status;
       users_excluded = v_users_excluded;
       factor_sequence = v_factor_sequence;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_factor_sequence then bnds
         else
           let arg =
             (yojson_of_list yojson_of_factor_sequence)
               v_factor_sequence
           in
           let bnd = "factor_sequence", arg in
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
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_persistent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "session_persistent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_lifetime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_idle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_idle", arg in
             bnd :: bnds
       in
       let bnds =
         match v_risk_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "risk_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_risc_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "risc_level", arg in
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
         match v_primary_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_factor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_id", arg in
             bnd :: bnds
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
         match v_mfa_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "mfa_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mfa_remember_device with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "mfa_remember_device", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mfa_prompt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mfa_prompt", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mfa_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "mfa_lifetime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_provider_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_provider_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_provider with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider", arg in
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
         match v_behaviors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "behaviors", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authtype with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authtype", arg in
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
    : okta_policy_rule_signon -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy_rule_signon

[@@@deriving.end]

let factor_sequence__secondary_criteria ~factor_type ~provider () :
    factor_sequence__secondary_criteria =
  { factor_type; provider }

let factor_sequence ?(secondary_criteria = [])
    ~primary_criteria_factor_type ~primary_criteria_provider () :
    factor_sequence =
  {
    primary_criteria_factor_type;
    primary_criteria_provider;
    secondary_criteria;
  }

let okta_policy_rule_signon ?access ?authtype ?behaviors ?id
    ?identity_provider ?identity_provider_ids ?mfa_lifetime
    ?mfa_prompt ?mfa_remember_device ?mfa_required
    ?network_connection ?network_excludes ?network_includes
    ?policy_id ?primary_factor ?priority ?risc_level ?risk_level
    ?session_idle ?session_lifetime ?session_persistent ?status
    ?users_excluded ?(factor_sequence = []) ~name () :
    okta_policy_rule_signon =
  {
    access;
    authtype;
    behaviors;
    id;
    identity_provider;
    identity_provider_ids;
    mfa_lifetime;
    mfa_prompt;
    mfa_remember_device;
    mfa_required;
    name;
    network_connection;
    network_excludes;
    network_includes;
    policy_id;
    primary_factor;
    priority;
    risc_level;
    risk_level;
    session_idle;
    session_lifetime;
    session_persistent;
    status;
    users_excluded;
    factor_sequence;
  }

type t = {
  tf_name : string;
  access : string prop;
  authtype : string prop;
  behaviors : string list prop;
  id : string prop;
  identity_provider : string prop;
  identity_provider_ids : string list prop;
  mfa_lifetime : float prop;
  mfa_prompt : string prop;
  mfa_remember_device : bool prop;
  mfa_required : bool prop;
  name : string prop;
  network_connection : string prop;
  network_excludes : string list prop;
  network_includes : string list prop;
  policy_id : string prop;
  primary_factor : string prop;
  priority : float prop;
  risc_level : string prop;
  risk_level : string prop;
  session_idle : float prop;
  session_lifetime : float prop;
  session_persistent : bool prop;
  status : string prop;
  users_excluded : string list prop;
}

let make ?access ?authtype ?behaviors ?id ?identity_provider
    ?identity_provider_ids ?mfa_lifetime ?mfa_prompt
    ?mfa_remember_device ?mfa_required ?network_connection
    ?network_excludes ?network_includes ?policy_id ?primary_factor
    ?priority ?risc_level ?risk_level ?session_idle ?session_lifetime
    ?session_persistent ?status ?users_excluded
    ?(factor_sequence = []) ~name __id =
  let __type = "okta_policy_rule_signon" in
  let __attrs =
    ({
       tf_name = __id;
       access = Prop.computed __type __id "access";
       authtype = Prop.computed __type __id "authtype";
       behaviors = Prop.computed __type __id "behaviors";
       id = Prop.computed __type __id "id";
       identity_provider =
         Prop.computed __type __id "identity_provider";
       identity_provider_ids =
         Prop.computed __type __id "identity_provider_ids";
       mfa_lifetime = Prop.computed __type __id "mfa_lifetime";
       mfa_prompt = Prop.computed __type __id "mfa_prompt";
       mfa_remember_device =
         Prop.computed __type __id "mfa_remember_device";
       mfa_required = Prop.computed __type __id "mfa_required";
       name = Prop.computed __type __id "name";
       network_connection =
         Prop.computed __type __id "network_connection";
       network_excludes =
         Prop.computed __type __id "network_excludes";
       network_includes =
         Prop.computed __type __id "network_includes";
       policy_id = Prop.computed __type __id "policy_id";
       primary_factor = Prop.computed __type __id "primary_factor";
       priority = Prop.computed __type __id "priority";
       risc_level = Prop.computed __type __id "risc_level";
       risk_level = Prop.computed __type __id "risk_level";
       session_idle = Prop.computed __type __id "session_idle";
       session_lifetime =
         Prop.computed __type __id "session_lifetime";
       session_persistent =
         Prop.computed __type __id "session_persistent";
       status = Prop.computed __type __id "status";
       users_excluded = Prop.computed __type __id "users_excluded";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_policy_rule_signon
        (okta_policy_rule_signon ?access ?authtype ?behaviors ?id
           ?identity_provider ?identity_provider_ids ?mfa_lifetime
           ?mfa_prompt ?mfa_remember_device ?mfa_required
           ?network_connection ?network_excludes ?network_includes
           ?policy_id ?primary_factor ?priority ?risc_level
           ?risk_level ?session_idle ?session_lifetime
           ?session_persistent ?status ?users_excluded
           ~factor_sequence ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?access ?authtype ?behaviors ?id
    ?identity_provider ?identity_provider_ids ?mfa_lifetime
    ?mfa_prompt ?mfa_remember_device ?mfa_required
    ?network_connection ?network_excludes ?network_includes
    ?policy_id ?primary_factor ?priority ?risc_level ?risk_level
    ?session_idle ?session_lifetime ?session_persistent ?status
    ?users_excluded ?(factor_sequence = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?access ?authtype ?behaviors ?id ?identity_provider
      ?identity_provider_ids ?mfa_lifetime ?mfa_prompt
      ?mfa_remember_device ?mfa_required ?network_connection
      ?network_excludes ?network_includes ?policy_id ?primary_factor
      ?priority ?risc_level ?risk_level ?session_idle
      ?session_lifetime ?session_persistent ?status ?users_excluded
      ~factor_sequence ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

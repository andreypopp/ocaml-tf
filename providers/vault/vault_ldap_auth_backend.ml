(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ldap_auth_backend = {
  binddn : string prop option; [@option]
  bindpass : string prop option; [@option]
  case_sensitive_names : bool prop option; [@option]
  certificate : string prop option; [@option]
  client_tls_cert : string prop option; [@option]
  client_tls_key : string prop option; [@option]
  connection_timeout : float prop option; [@option]
  deny_null_bind : bool prop option; [@option]
  description : string prop option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  disable_remount : bool prop option; [@option]
  discoverdn : bool prop option; [@option]
  groupattr : string prop option; [@option]
  groupdn : string prop option; [@option]
  groupfilter : string prop option; [@option]
  id : string prop option; [@option]
  insecure_tls : bool prop option; [@option]
  local : bool prop option; [@option]
  max_page_size : float prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  starttls : bool prop option; [@option]
  tls_max_version : string prop option; [@option]
  tls_min_version : string prop option; [@option]
  token_bound_cidrs : string prop list option; [@option]
  token_explicit_max_ttl : float prop option; [@option]
  token_max_ttl : float prop option; [@option]
  token_no_default_policy : bool prop option; [@option]
  token_num_uses : float prop option; [@option]
  token_period : float prop option; [@option]
  token_policies : string prop list option; [@option]
  token_ttl : float prop option; [@option]
  token_type : string prop option; [@option]
  upndomain : string prop option; [@option]
  url : string prop;
  use_token_groups : bool prop option; [@option]
  userattr : string prop option; [@option]
  userdn : string prop option; [@option]
  userfilter : string prop option; [@option]
  username_as_alias : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ldap_auth_backend) -> ()

let yojson_of_vault_ldap_auth_backend =
  (function
   | {
       binddn = v_binddn;
       bindpass = v_bindpass;
       case_sensitive_names = v_case_sensitive_names;
       certificate = v_certificate;
       client_tls_cert = v_client_tls_cert;
       client_tls_key = v_client_tls_key;
       connection_timeout = v_connection_timeout;
       deny_null_bind = v_deny_null_bind;
       description = v_description;
       disable_automated_rotation = v_disable_automated_rotation;
       disable_remount = v_disable_remount;
       discoverdn = v_discoverdn;
       groupattr = v_groupattr;
       groupdn = v_groupdn;
       groupfilter = v_groupfilter;
       id = v_id;
       insecure_tls = v_insecure_tls;
       local = v_local;
       max_page_size = v_max_page_size;
       namespace = v_namespace;
       path = v_path;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       starttls = v_starttls;
       tls_max_version = v_tls_max_version;
       tls_min_version = v_tls_min_version;
       token_bound_cidrs = v_token_bound_cidrs;
       token_explicit_max_ttl = v_token_explicit_max_ttl;
       token_max_ttl = v_token_max_ttl;
       token_no_default_policy = v_token_no_default_policy;
       token_num_uses = v_token_num_uses;
       token_period = v_token_period;
       token_policies = v_token_policies;
       token_ttl = v_token_ttl;
       token_type = v_token_type;
       upndomain = v_upndomain;
       url = v_url;
       use_token_groups = v_use_token_groups;
       userattr = v_userattr;
       userdn = v_userdn;
       userfilter = v_userfilter;
       username_as_alias = v_username_as_alias;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_username_as_alias with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "username_as_alias", arg in
         bnd :: bnds
     in
     let bnds =
       match v_userfilter with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "userfilter", arg in
         bnd :: bnds
     in
     let bnds =
       match v_userdn with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "userdn", arg in
         bnd :: bnds
     in
     let bnds =
       match v_userattr with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "userattr", arg in
         bnd :: bnds
     in
     let bnds =
       match v_use_token_groups with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_token_groups", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_url in
       ("url", arg) :: bnds
     in
     let bnds =
       match v_upndomain with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "upndomain", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "token_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_policies with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "token_policies", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_num_uses with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_num_uses", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_no_default_policy with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "token_no_default_policy", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_max_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_explicit_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "token_explicit_max_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token_bound_cidrs with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "token_bound_cidrs", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_min_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_min_version", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_max_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_max_version", arg in
         bnd :: bnds
     in
     let bnds =
       match v_starttls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "starttls", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_page_size with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_page_size", arg in
         bnd :: bnds
     in
     let bnds =
       match v_local with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "local", arg in
         bnd :: bnds
     in
     let bnds =
       match v_insecure_tls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "insecure_tls", arg in
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
       match v_groupfilter with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "groupfilter", arg in
         bnd :: bnds
     in
     let bnds =
       match v_groupdn with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "groupdn", arg in
         bnd :: bnds
     in
     let bnds =
       match v_groupattr with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "groupattr", arg in
         bnd :: bnds
     in
     let bnds =
       match v_discoverdn with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "discoverdn", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_remount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_remount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_description with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "description", arg in
         bnd :: bnds
     in
     let bnds =
       match v_deny_null_bind with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "deny_null_bind", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connection_timeout with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "connection_timeout", arg in
         bnd :: bnds
     in
     let bnds =
       match v_client_tls_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "client_tls_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_client_tls_cert with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "client_tls_cert", arg in
         bnd :: bnds
     in
     let bnds =
       match v_certificate with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "certificate", arg in
         bnd :: bnds
     in
     let bnds =
       match v_case_sensitive_names with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "case_sensitive_names", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bindpass with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "bindpass", arg in
         bnd :: bnds
     in
     let bnds =
       match v_binddn with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "binddn", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_ldap_auth_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ldap_auth_backend

[@@@deriving.end]

let vault_ldap_auth_backend ?binddn ?bindpass ?case_sensitive_names ?certificate ?client_tls_cert ?client_tls_key
  ?connection_timeout ?deny_null_bind ?description ?disable_automated_rotation ?disable_remount ?discoverdn ?groupattr
  ?groupdn ?groupfilter ?id ?insecure_tls ?local ?max_page_size ?namespace ?path ?rotation_period ?rotation_schedule
  ?rotation_window ?starttls ?tls_max_version ?tls_min_version ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl
  ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ?upndomain
  ?use_token_groups ?userattr ?userdn ?userfilter ?username_as_alias ~url () =
  ({
     binddn;
     bindpass;
     case_sensitive_names;
     certificate;
     client_tls_cert;
     client_tls_key;
     connection_timeout;
     deny_null_bind;
     description;
     disable_automated_rotation;
     disable_remount;
     discoverdn;
     groupattr;
     groupdn;
     groupfilter;
     id;
     insecure_tls;
     local;
     max_page_size;
     namespace;
     path;
     rotation_period;
     rotation_schedule;
     rotation_window;
     starttls;
     tls_max_version;
     tls_min_version;
     token_bound_cidrs;
     token_explicit_max_ttl;
     token_max_ttl;
     token_no_default_policy;
     token_num_uses;
     token_period;
     token_policies;
     token_ttl;
     token_type;
     upndomain;
     url;
     use_token_groups;
     userattr;
     userdn;
     userfilter;
     username_as_alias;
   }
    : vault_ldap_auth_backend)

type t = {
  tf_name : string;
  accessor : string prop;
  binddn : string prop;
  bindpass : string prop;
  case_sensitive_names : bool prop;
  certificate : string prop;
  client_tls_cert : string prop;
  client_tls_key : string prop;
  connection_timeout : float prop;
  deny_null_bind : bool prop;
  description : string prop;
  disable_automated_rotation : bool prop;
  disable_remount : bool prop;
  discoverdn : bool prop;
  groupattr : string prop;
  groupdn : string prop;
  groupfilter : string prop;
  id : string prop;
  insecure_tls : bool prop;
  local : bool prop;
  max_page_size : float prop;
  namespace : string prop;
  path : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  starttls : bool prop;
  tls_max_version : string prop;
  tls_min_version : string prop;
  token_bound_cidrs : string list prop;
  token_explicit_max_ttl : float prop;
  token_max_ttl : float prop;
  token_no_default_policy : bool prop;
  token_num_uses : float prop;
  token_period : float prop;
  token_policies : string list prop;
  token_ttl : float prop;
  token_type : string prop;
  upndomain : string prop;
  url : string prop;
  use_token_groups : bool prop;
  userattr : string prop;
  userdn : string prop;
  userfilter : string prop;
  username_as_alias : bool prop;
}

let make ?binddn ?bindpass ?case_sensitive_names ?certificate ?client_tls_cert ?client_tls_key ?connection_timeout
  ?deny_null_bind ?description ?disable_automated_rotation ?disable_remount ?discoverdn ?groupattr ?groupdn ?groupfilter
  ?id ?insecure_tls ?local ?max_page_size ?namespace ?path ?rotation_period ?rotation_schedule ?rotation_window
  ?starttls ?tls_max_version ?tls_min_version ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl
  ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ?upndomain
  ?use_token_groups ?userattr ?userdn ?userfilter ?username_as_alias ~url __id =
  let __type = "vault_ldap_auth_backend" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       binddn = Prop.computed __type __id "binddn";
       bindpass = Prop.computed __type __id "bindpass";
       case_sensitive_names = Prop.computed __type __id "case_sensitive_names";
       certificate = Prop.computed __type __id "certificate";
       client_tls_cert = Prop.computed __type __id "client_tls_cert";
       client_tls_key = Prop.computed __type __id "client_tls_key";
       connection_timeout = Prop.computed __type __id "connection_timeout";
       deny_null_bind = Prop.computed __type __id "deny_null_bind";
       description = Prop.computed __type __id "description";
       disable_automated_rotation = Prop.computed __type __id "disable_automated_rotation";
       disable_remount = Prop.computed __type __id "disable_remount";
       discoverdn = Prop.computed __type __id "discoverdn";
       groupattr = Prop.computed __type __id "groupattr";
       groupdn = Prop.computed __type __id "groupdn";
       groupfilter = Prop.computed __type __id "groupfilter";
       id = Prop.computed __type __id "id";
       insecure_tls = Prop.computed __type __id "insecure_tls";
       local = Prop.computed __type __id "local";
       max_page_size = Prop.computed __type __id "max_page_size";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       rotation_period = Prop.computed __type __id "rotation_period";
       rotation_schedule = Prop.computed __type __id "rotation_schedule";
       rotation_window = Prop.computed __type __id "rotation_window";
       starttls = Prop.computed __type __id "starttls";
       tls_max_version = Prop.computed __type __id "tls_max_version";
       tls_min_version = Prop.computed __type __id "tls_min_version";
       token_bound_cidrs = Prop.computed __type __id "token_bound_cidrs";
       token_explicit_max_ttl = Prop.computed __type __id "token_explicit_max_ttl";
       token_max_ttl = Prop.computed __type __id "token_max_ttl";
       token_no_default_policy = Prop.computed __type __id "token_no_default_policy";
       token_num_uses = Prop.computed __type __id "token_num_uses";
       token_period = Prop.computed __type __id "token_period";
       token_policies = Prop.computed __type __id "token_policies";
       token_ttl = Prop.computed __type __id "token_ttl";
       token_type = Prop.computed __type __id "token_type";
       upndomain = Prop.computed __type __id "upndomain";
       url = Prop.computed __type __id "url";
       use_token_groups = Prop.computed __type __id "use_token_groups";
       userattr = Prop.computed __type __id "userattr";
       userdn = Prop.computed __type __id "userdn";
       userfilter = Prop.computed __type __id "userfilter";
       username_as_alias = Prop.computed __type __id "username_as_alias";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_ldap_auth_backend
        (vault_ldap_auth_backend ?binddn ?bindpass ?case_sensitive_names ?certificate ?client_tls_cert ?client_tls_key
           ?connection_timeout ?deny_null_bind ?description ?disable_automated_rotation ?disable_remount ?discoverdn
           ?groupattr ?groupdn ?groupfilter ?id ?insecure_tls ?local ?max_page_size ?namespace ?path ?rotation_period
           ?rotation_schedule ?rotation_window ?starttls ?tls_max_version ?tls_min_version ?token_bound_cidrs
           ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies
           ?token_ttl ?token_type ?upndomain ?use_token_groups ?userattr ?userdn ?userfilter ?username_as_alias ~url ());
    attrs = __attrs;
  }

let register ?tf_module ?binddn ?bindpass ?case_sensitive_names ?certificate ?client_tls_cert ?client_tls_key
  ?connection_timeout ?deny_null_bind ?description ?disable_automated_rotation ?disable_remount ?discoverdn ?groupattr
  ?groupdn ?groupfilter ?id ?insecure_tls ?local ?max_page_size ?namespace ?path ?rotation_period ?rotation_schedule
  ?rotation_window ?starttls ?tls_max_version ?tls_min_version ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl
  ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type ?upndomain
  ?use_token_groups ?userattr ?userdn ?userfilter ?username_as_alias ~url __id =
  let (r : _ Tf_core.resource) =
    make ?binddn ?bindpass ?case_sensitive_names ?certificate ?client_tls_cert ?client_tls_key ?connection_timeout
      ?deny_null_bind ?description ?disable_automated_rotation ?disable_remount ?discoverdn ?groupattr ?groupdn
      ?groupfilter ?id ?insecure_tls ?local ?max_page_size ?namespace ?path ?rotation_period ?rotation_schedule
      ?rotation_window ?starttls ?tls_max_version ?tls_min_version ?token_bound_cidrs ?token_explicit_max_ttl
      ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type
      ?upndomain ?use_token_groups ?userattr ?userdn ?userfilter ?username_as_alias ~url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

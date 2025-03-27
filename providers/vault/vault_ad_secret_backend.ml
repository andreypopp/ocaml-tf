(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ad_secret_backend = {
  anonymous_group_search : bool prop option; [@option]
  backend : string prop option; [@option]
  binddn : string prop;
  bindpass : string prop;
  case_sensitive_names : bool prop option; [@option]
  certificate : string prop option; [@option]
  client_tls_cert : string prop option; [@option]
  client_tls_key : string prop option; [@option]
  default_lease_ttl_seconds : float prop option; [@option]
  deny_null_bind : bool prop option; [@option]
  description : string prop option; [@option]
  disable_remount : bool prop option; [@option]
  discoverdn : bool prop option; [@option]
  groupattr : string prop option; [@option]
  groupdn : string prop option; [@option]
  groupfilter : string prop option; [@option]
  id : string prop option; [@option]
  insecure_tls : bool prop option; [@option]
  last_rotation_tolerance : float prop option; [@option]
  local : bool prop option; [@option]
  max_lease_ttl_seconds : float prop option; [@option]
  max_ttl : float prop option; [@option]
  namespace : string prop option; [@option]
  password_policy : string prop option; [@option]
  request_timeout : float prop option; [@option]
  starttls : bool prop option; [@option]
  tls_max_version : string prop option; [@option]
  tls_min_version : string prop option; [@option]
  ttl : float prop option; [@option]
  upndomain : string prop option; [@option]
  url : string prop option; [@option]
  use_pre111_group_cn_behavior : bool prop option; [@option]
  use_token_groups : bool prop option; [@option]
  userattr : string prop option; [@option]
  userdn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ad_secret_backend) -> ()

let yojson_of_vault_ad_secret_backend =
  (function
   | {
       anonymous_group_search = v_anonymous_group_search;
       backend = v_backend;
       binddn = v_binddn;
       bindpass = v_bindpass;
       case_sensitive_names = v_case_sensitive_names;
       certificate = v_certificate;
       client_tls_cert = v_client_tls_cert;
       client_tls_key = v_client_tls_key;
       default_lease_ttl_seconds = v_default_lease_ttl_seconds;
       deny_null_bind = v_deny_null_bind;
       description = v_description;
       disable_remount = v_disable_remount;
       discoverdn = v_discoverdn;
       groupattr = v_groupattr;
       groupdn = v_groupdn;
       groupfilter = v_groupfilter;
       id = v_id;
       insecure_tls = v_insecure_tls;
       last_rotation_tolerance = v_last_rotation_tolerance;
       local = v_local;
       max_lease_ttl_seconds = v_max_lease_ttl_seconds;
       max_ttl = v_max_ttl;
       namespace = v_namespace;
       password_policy = v_password_policy;
       request_timeout = v_request_timeout;
       starttls = v_starttls;
       tls_max_version = v_tls_max_version;
       tls_min_version = v_tls_min_version;
       ttl = v_ttl;
       upndomain = v_upndomain;
       url = v_url;
       use_pre111_group_cn_behavior = v_use_pre111_group_cn_behavior;
       use_token_groups = v_use_token_groups;
       userattr = v_userattr;
       userdn = v_userdn;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_use_pre111_group_cn_behavior with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_pre111_group_cn_behavior", arg in
         bnd :: bnds
     in
     let bnds =
       match v_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "url", arg in
         bnd :: bnds
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
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "ttl", arg in
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
       match v_request_timeout with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "request_timeout", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password_policy with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password_policy", arg in
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
       match v_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_lease_ttl_seconds", arg in
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
       match v_last_rotation_tolerance with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "last_rotation_tolerance", arg in
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
       match v_default_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "default_lease_ttl_seconds", arg in
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
       let arg = yojson_of_prop yojson_of_string v_bindpass in
       ("bindpass", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_binddn in
       ("binddn", arg) :: bnds
     in
     let bnds =
       match v_backend with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "backend", arg in
         bnd :: bnds
     in
     let bnds =
       match v_anonymous_group_search with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "anonymous_group_search", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_ad_secret_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ad_secret_backend

[@@@deriving.end]

let vault_ad_secret_backend ?anonymous_group_search ?backend ?case_sensitive_names ?certificate ?client_tls_cert
  ?client_tls_key ?default_lease_ttl_seconds ?deny_null_bind ?description ?disable_remount ?discoverdn ?groupattr
  ?groupdn ?groupfilter ?id ?insecure_tls ?last_rotation_tolerance ?local ?max_lease_ttl_seconds ?max_ttl ?namespace
  ?password_policy ?request_timeout ?starttls ?tls_max_version ?tls_min_version ?ttl ?upndomain ?url
  ?use_pre111_group_cn_behavior ?use_token_groups ?userattr ?userdn ~binddn ~bindpass () =
  ({
     anonymous_group_search;
     backend;
     binddn;
     bindpass;
     case_sensitive_names;
     certificate;
     client_tls_cert;
     client_tls_key;
     default_lease_ttl_seconds;
     deny_null_bind;
     description;
     disable_remount;
     discoverdn;
     groupattr;
     groupdn;
     groupfilter;
     id;
     insecure_tls;
     last_rotation_tolerance;
     local;
     max_lease_ttl_seconds;
     max_ttl;
     namespace;
     password_policy;
     request_timeout;
     starttls;
     tls_max_version;
     tls_min_version;
     ttl;
     upndomain;
     url;
     use_pre111_group_cn_behavior;
     use_token_groups;
     userattr;
     userdn;
   }
    : vault_ad_secret_backend)

type t = {
  tf_name : string;
  anonymous_group_search : bool prop;
  backend : string prop;
  binddn : string prop;
  bindpass : string prop;
  case_sensitive_names : bool prop;
  certificate : string prop;
  client_tls_cert : string prop;
  client_tls_key : string prop;
  default_lease_ttl_seconds : float prop;
  deny_null_bind : bool prop;
  description : string prop;
  disable_remount : bool prop;
  discoverdn : bool prop;
  groupattr : string prop;
  groupdn : string prop;
  groupfilter : string prop;
  id : string prop;
  insecure_tls : bool prop;
  last_rotation_tolerance : float prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  max_ttl : float prop;
  namespace : string prop;
  password_policy : string prop;
  request_timeout : float prop;
  starttls : bool prop;
  tls_max_version : string prop;
  tls_min_version : string prop;
  ttl : float prop;
  upndomain : string prop;
  url : string prop;
  use_pre111_group_cn_behavior : bool prop;
  use_token_groups : bool prop;
  userattr : string prop;
  userdn : string prop;
}

let make ?anonymous_group_search ?backend ?case_sensitive_names ?certificate ?client_tls_cert ?client_tls_key
  ?default_lease_ttl_seconds ?deny_null_bind ?description ?disable_remount ?discoverdn ?groupattr ?groupdn ?groupfilter
  ?id ?insecure_tls ?last_rotation_tolerance ?local ?max_lease_ttl_seconds ?max_ttl ?namespace ?password_policy
  ?request_timeout ?starttls ?tls_max_version ?tls_min_version ?ttl ?upndomain ?url ?use_pre111_group_cn_behavior
  ?use_token_groups ?userattr ?userdn ~binddn ~bindpass __id =
  let __type = "vault_ad_secret_backend" in
  let __attrs =
    ({
       tf_name = __id;
       anonymous_group_search = Prop.computed __type __id "anonymous_group_search";
       backend = Prop.computed __type __id "backend";
       binddn = Prop.computed __type __id "binddn";
       bindpass = Prop.computed __type __id "bindpass";
       case_sensitive_names = Prop.computed __type __id "case_sensitive_names";
       certificate = Prop.computed __type __id "certificate";
       client_tls_cert = Prop.computed __type __id "client_tls_cert";
       client_tls_key = Prop.computed __type __id "client_tls_key";
       default_lease_ttl_seconds = Prop.computed __type __id "default_lease_ttl_seconds";
       deny_null_bind = Prop.computed __type __id "deny_null_bind";
       description = Prop.computed __type __id "description";
       disable_remount = Prop.computed __type __id "disable_remount";
       discoverdn = Prop.computed __type __id "discoverdn";
       groupattr = Prop.computed __type __id "groupattr";
       groupdn = Prop.computed __type __id "groupdn";
       groupfilter = Prop.computed __type __id "groupfilter";
       id = Prop.computed __type __id "id";
       insecure_tls = Prop.computed __type __id "insecure_tls";
       last_rotation_tolerance = Prop.computed __type __id "last_rotation_tolerance";
       local = Prop.computed __type __id "local";
       max_lease_ttl_seconds = Prop.computed __type __id "max_lease_ttl_seconds";
       max_ttl = Prop.computed __type __id "max_ttl";
       namespace = Prop.computed __type __id "namespace";
       password_policy = Prop.computed __type __id "password_policy";
       request_timeout = Prop.computed __type __id "request_timeout";
       starttls = Prop.computed __type __id "starttls";
       tls_max_version = Prop.computed __type __id "tls_max_version";
       tls_min_version = Prop.computed __type __id "tls_min_version";
       ttl = Prop.computed __type __id "ttl";
       upndomain = Prop.computed __type __id "upndomain";
       url = Prop.computed __type __id "url";
       use_pre111_group_cn_behavior = Prop.computed __type __id "use_pre111_group_cn_behavior";
       use_token_groups = Prop.computed __type __id "use_token_groups";
       userattr = Prop.computed __type __id "userattr";
       userdn = Prop.computed __type __id "userdn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_ad_secret_backend
        (vault_ad_secret_backend ?anonymous_group_search ?backend ?case_sensitive_names ?certificate ?client_tls_cert
           ?client_tls_key ?default_lease_ttl_seconds ?deny_null_bind ?description ?disable_remount ?discoverdn
           ?groupattr ?groupdn ?groupfilter ?id ?insecure_tls ?last_rotation_tolerance ?local ?max_lease_ttl_seconds
           ?max_ttl ?namespace ?password_policy ?request_timeout ?starttls ?tls_max_version ?tls_min_version ?ttl
           ?upndomain ?url ?use_pre111_group_cn_behavior ?use_token_groups ?userattr ?userdn ~binddn ~bindpass ());
    attrs = __attrs;
  }

let register ?tf_module ?anonymous_group_search ?backend ?case_sensitive_names ?certificate ?client_tls_cert
  ?client_tls_key ?default_lease_ttl_seconds ?deny_null_bind ?description ?disable_remount ?discoverdn ?groupattr
  ?groupdn ?groupfilter ?id ?insecure_tls ?last_rotation_tolerance ?local ?max_lease_ttl_seconds ?max_ttl ?namespace
  ?password_policy ?request_timeout ?starttls ?tls_max_version ?tls_min_version ?ttl ?upndomain ?url
  ?use_pre111_group_cn_behavior ?use_token_groups ?userattr ?userdn ~binddn ~bindpass __id =
  let (r : _ Tf_core.resource) =
    make ?anonymous_group_search ?backend ?case_sensitive_names ?certificate ?client_tls_cert ?client_tls_key
      ?default_lease_ttl_seconds ?deny_null_bind ?description ?disable_remount ?discoverdn ?groupattr ?groupdn
      ?groupfilter ?id ?insecure_tls ?last_rotation_tolerance ?local ?max_lease_ttl_seconds ?max_ttl ?namespace
      ?password_policy ?request_timeout ?starttls ?tls_max_version ?tls_min_version ?ttl ?upndomain ?url
      ?use_pre111_group_cn_behavior ?use_token_groups ?userattr ?userdn ~binddn ~bindpass __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

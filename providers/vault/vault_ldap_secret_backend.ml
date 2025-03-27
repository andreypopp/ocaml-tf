(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ldap_secret_backend = {
  allowed_managed_keys : string prop list option; [@option]
  allowed_response_headers : string prop list option; [@option]
  audit_non_hmac_request_keys : string prop list option; [@option]
  audit_non_hmac_response_keys : string prop list option; [@option]
  binddn : string prop;
  bindpass : string prop;
  certificate : string prop option; [@option]
  client_tls_cert : string prop option; [@option]
  client_tls_key : string prop option; [@option]
  connection_timeout : float prop option; [@option]
  default_lease_ttl_seconds : float prop option; [@option]
  delegated_auth_accessors : string prop list option; [@option]
  description : string prop option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  disable_remount : bool prop option; [@option]
  external_entropy_access : bool prop option; [@option]
  id : string prop option; [@option]
  identity_token_key : string prop option; [@option]
  insecure_tls : bool prop option; [@option]
  listing_visibility : string prop option; [@option]
  local : bool prop option; [@option]
  max_lease_ttl_seconds : float prop option; [@option]
  namespace : string prop option; [@option]
  options : string prop Tf_core.assoc option; [@option]
  passthrough_request_headers : string prop list option; [@option]
  password_policy : string prop option; [@option]
  path : string prop option; [@option]
  plugin_version : string prop option; [@option]
  request_timeout : float prop option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  schema : string prop option; [@option]
  seal_wrap : bool prop option; [@option]
  skip_static_role_import_rotation : bool prop option; [@option]
  starttls : bool prop option; [@option]
  upndomain : string prop option; [@option]
  url : string prop option; [@option]
  userattr : string prop option; [@option]
  userdn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ldap_secret_backend) -> ()

let yojson_of_vault_ldap_secret_backend =
  (function
   | {
       allowed_managed_keys = v_allowed_managed_keys;
       allowed_response_headers = v_allowed_response_headers;
       audit_non_hmac_request_keys = v_audit_non_hmac_request_keys;
       audit_non_hmac_response_keys = v_audit_non_hmac_response_keys;
       binddn = v_binddn;
       bindpass = v_bindpass;
       certificate = v_certificate;
       client_tls_cert = v_client_tls_cert;
       client_tls_key = v_client_tls_key;
       connection_timeout = v_connection_timeout;
       default_lease_ttl_seconds = v_default_lease_ttl_seconds;
       delegated_auth_accessors = v_delegated_auth_accessors;
       description = v_description;
       disable_automated_rotation = v_disable_automated_rotation;
       disable_remount = v_disable_remount;
       external_entropy_access = v_external_entropy_access;
       id = v_id;
       identity_token_key = v_identity_token_key;
       insecure_tls = v_insecure_tls;
       listing_visibility = v_listing_visibility;
       local = v_local;
       max_lease_ttl_seconds = v_max_lease_ttl_seconds;
       namespace = v_namespace;
       options = v_options;
       passthrough_request_headers = v_passthrough_request_headers;
       password_policy = v_password_policy;
       path = v_path;
       plugin_version = v_plugin_version;
       request_timeout = v_request_timeout;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       schema = v_schema;
       seal_wrap = v_seal_wrap;
       skip_static_role_import_rotation = v_skip_static_role_import_rotation;
       starttls = v_starttls;
       upndomain = v_upndomain;
       url = v_url;
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
       match v_starttls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "starttls", arg in
         bnd :: bnds
     in
     let bnds =
       match v_skip_static_role_import_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "skip_static_role_import_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_seal_wrap with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "seal_wrap", arg in
         bnd :: bnds
     in
     let bnds =
       match v_schema with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "schema", arg in
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
       match v_request_timeout with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "request_timeout", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_version", arg in
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
       match v_password_policy with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password_policy", arg in
         bnd :: bnds
     in
     let bnds =
       match v_passthrough_request_headers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "passthrough_request_headers", arg in
         bnd :: bnds
     in
     let bnds =
       match v_options with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "options", arg in
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
       match v_listing_visibility with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "listing_visibility", arg in
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
       match v_identity_token_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "identity_token_key", arg in
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
       match v_external_entropy_access with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "external_entropy_access", arg in
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
       match v_delegated_auth_accessors with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "delegated_auth_accessors", arg in
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
       let arg = yojson_of_prop yojson_of_string v_bindpass in
       ("bindpass", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_binddn in
       ("binddn", arg) :: bnds
     in
     let bnds =
       match v_audit_non_hmac_response_keys with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "audit_non_hmac_response_keys", arg in
         bnd :: bnds
     in
     let bnds =
       match v_audit_non_hmac_request_keys with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "audit_non_hmac_request_keys", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_response_headers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_response_headers", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_managed_keys with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_managed_keys", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_ldap_secret_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ldap_secret_backend

[@@@deriving.end]

let vault_ldap_secret_backend ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys
  ?audit_non_hmac_response_keys ?certificate ?client_tls_cert ?client_tls_key ?connection_timeout
  ?default_lease_ttl_seconds ?delegated_auth_accessors ?description ?disable_automated_rotation ?disable_remount
  ?external_entropy_access ?id ?identity_token_key ?insecure_tls ?listing_visibility ?local ?max_lease_ttl_seconds
  ?namespace ?options ?passthrough_request_headers ?password_policy ?path ?plugin_version ?request_timeout
  ?rotation_period ?rotation_schedule ?rotation_window ?schema ?seal_wrap ?skip_static_role_import_rotation ?starttls
  ?upndomain ?url ?userattr ?userdn ~binddn ~bindpass () =
  ({
     allowed_managed_keys;
     allowed_response_headers;
     audit_non_hmac_request_keys;
     audit_non_hmac_response_keys;
     binddn;
     bindpass;
     certificate;
     client_tls_cert;
     client_tls_key;
     connection_timeout;
     default_lease_ttl_seconds;
     delegated_auth_accessors;
     description;
     disable_automated_rotation;
     disable_remount;
     external_entropy_access;
     id;
     identity_token_key;
     insecure_tls;
     listing_visibility;
     local;
     max_lease_ttl_seconds;
     namespace;
     options;
     passthrough_request_headers;
     password_policy;
     path;
     plugin_version;
     request_timeout;
     rotation_period;
     rotation_schedule;
     rotation_window;
     schema;
     seal_wrap;
     skip_static_role_import_rotation;
     starttls;
     upndomain;
     url;
     userattr;
     userdn;
   }
    : vault_ldap_secret_backend)

type t = {
  tf_name : string;
  accessor : string prop;
  allowed_managed_keys : string list prop;
  allowed_response_headers : string list prop;
  audit_non_hmac_request_keys : string list prop;
  audit_non_hmac_response_keys : string list prop;
  binddn : string prop;
  bindpass : string prop;
  certificate : string prop;
  client_tls_cert : string prop;
  client_tls_key : string prop;
  connection_timeout : float prop;
  default_lease_ttl_seconds : float prop;
  delegated_auth_accessors : string list prop;
  description : string prop;
  disable_automated_rotation : bool prop;
  disable_remount : bool prop;
  external_entropy_access : bool prop;
  id : string prop;
  identity_token_key : string prop;
  insecure_tls : bool prop;
  listing_visibility : string prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  options : string Tf_core.assoc prop;
  passthrough_request_headers : string list prop;
  password_policy : string prop;
  path : string prop;
  plugin_version : string prop;
  request_timeout : float prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  schema : string prop;
  seal_wrap : bool prop;
  skip_static_role_import_rotation : bool prop;
  starttls : bool prop;
  upndomain : string prop;
  url : string prop;
  userattr : string prop;
  userdn : string prop;
}

let make ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys ?audit_non_hmac_response_keys
  ?certificate ?client_tls_cert ?client_tls_key ?connection_timeout ?default_lease_ttl_seconds ?delegated_auth_accessors
  ?description ?disable_automated_rotation ?disable_remount ?external_entropy_access ?id ?identity_token_key
  ?insecure_tls ?listing_visibility ?local ?max_lease_ttl_seconds ?namespace ?options ?passthrough_request_headers
  ?password_policy ?path ?plugin_version ?request_timeout ?rotation_period ?rotation_schedule ?rotation_window ?schema
  ?seal_wrap ?skip_static_role_import_rotation ?starttls ?upndomain ?url ?userattr ?userdn ~binddn ~bindpass __id =
  let __type = "vault_ldap_secret_backend" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       allowed_managed_keys = Prop.computed __type __id "allowed_managed_keys";
       allowed_response_headers = Prop.computed __type __id "allowed_response_headers";
       audit_non_hmac_request_keys = Prop.computed __type __id "audit_non_hmac_request_keys";
       audit_non_hmac_response_keys = Prop.computed __type __id "audit_non_hmac_response_keys";
       binddn = Prop.computed __type __id "binddn";
       bindpass = Prop.computed __type __id "bindpass";
       certificate = Prop.computed __type __id "certificate";
       client_tls_cert = Prop.computed __type __id "client_tls_cert";
       client_tls_key = Prop.computed __type __id "client_tls_key";
       connection_timeout = Prop.computed __type __id "connection_timeout";
       default_lease_ttl_seconds = Prop.computed __type __id "default_lease_ttl_seconds";
       delegated_auth_accessors = Prop.computed __type __id "delegated_auth_accessors";
       description = Prop.computed __type __id "description";
       disable_automated_rotation = Prop.computed __type __id "disable_automated_rotation";
       disable_remount = Prop.computed __type __id "disable_remount";
       external_entropy_access = Prop.computed __type __id "external_entropy_access";
       id = Prop.computed __type __id "id";
       identity_token_key = Prop.computed __type __id "identity_token_key";
       insecure_tls = Prop.computed __type __id "insecure_tls";
       listing_visibility = Prop.computed __type __id "listing_visibility";
       local = Prop.computed __type __id "local";
       max_lease_ttl_seconds = Prop.computed __type __id "max_lease_ttl_seconds";
       namespace = Prop.computed __type __id "namespace";
       options = Prop.computed __type __id "options";
       passthrough_request_headers = Prop.computed __type __id "passthrough_request_headers";
       password_policy = Prop.computed __type __id "password_policy";
       path = Prop.computed __type __id "path";
       plugin_version = Prop.computed __type __id "plugin_version";
       request_timeout = Prop.computed __type __id "request_timeout";
       rotation_period = Prop.computed __type __id "rotation_period";
       rotation_schedule = Prop.computed __type __id "rotation_schedule";
       rotation_window = Prop.computed __type __id "rotation_window";
       schema = Prop.computed __type __id "schema";
       seal_wrap = Prop.computed __type __id "seal_wrap";
       skip_static_role_import_rotation = Prop.computed __type __id "skip_static_role_import_rotation";
       starttls = Prop.computed __type __id "starttls";
       upndomain = Prop.computed __type __id "upndomain";
       url = Prop.computed __type __id "url";
       userattr = Prop.computed __type __id "userattr";
       userdn = Prop.computed __type __id "userdn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_ldap_secret_backend
        (vault_ldap_secret_backend ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys
           ?audit_non_hmac_response_keys ?certificate ?client_tls_cert ?client_tls_key ?connection_timeout
           ?default_lease_ttl_seconds ?delegated_auth_accessors ?description ?disable_automated_rotation
           ?disable_remount ?external_entropy_access ?id ?identity_token_key ?insecure_tls ?listing_visibility ?local
           ?max_lease_ttl_seconds ?namespace ?options ?passthrough_request_headers ?password_policy ?path
           ?plugin_version ?request_timeout ?rotation_period ?rotation_schedule ?rotation_window ?schema ?seal_wrap
           ?skip_static_role_import_rotation ?starttls ?upndomain ?url ?userattr ?userdn ~binddn ~bindpass ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys
  ?audit_non_hmac_response_keys ?certificate ?client_tls_cert ?client_tls_key ?connection_timeout
  ?default_lease_ttl_seconds ?delegated_auth_accessors ?description ?disable_automated_rotation ?disable_remount
  ?external_entropy_access ?id ?identity_token_key ?insecure_tls ?listing_visibility ?local ?max_lease_ttl_seconds
  ?namespace ?options ?passthrough_request_headers ?password_policy ?path ?plugin_version ?request_timeout
  ?rotation_period ?rotation_schedule ?rotation_window ?schema ?seal_wrap ?skip_static_role_import_rotation ?starttls
  ?upndomain ?url ?userattr ?userdn ~binddn ~bindpass __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys ?audit_non_hmac_response_keys
      ?certificate ?client_tls_cert ?client_tls_key ?connection_timeout ?default_lease_ttl_seconds
      ?delegated_auth_accessors ?description ?disable_automated_rotation ?disable_remount ?external_entropy_access ?id
      ?identity_token_key ?insecure_tls ?listing_visibility ?local ?max_lease_ttl_seconds ?namespace ?options
      ?passthrough_request_headers ?password_policy ?path ?plugin_version ?request_timeout ?rotation_period
      ?rotation_schedule ?rotation_window ?schema ?seal_wrap ?skip_static_role_import_rotation ?starttls ?upndomain ?url
      ?userattr ?userdn ~binddn ~bindpass __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

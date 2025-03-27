(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_cert_auth_backend_role = {
  allowed_common_names : string prop list option; [@option]
  allowed_dns_sans : string prop list option; [@option]
  allowed_email_sans : string prop list option; [@option]
  allowed_names : string prop list option; [@option]
  allowed_organizational_units : string prop list option; [@option]
  allowed_uri_sans : string prop list option; [@option]
  backend : string prop option; [@option]
  certificate : string prop;
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  ocsp_ca_certificates : string prop option; [@option]
  ocsp_enabled : bool prop option; [@option]
  ocsp_fail_open : bool prop option; [@option]
  ocsp_query_all_servers : bool prop option; [@option]
  ocsp_servers_override : string prop list option; [@option]
  required_extensions : string prop list option; [@option]
  token_bound_cidrs : string prop list option; [@option]
  token_explicit_max_ttl : float prop option; [@option]
  token_max_ttl : float prop option; [@option]
  token_no_default_policy : bool prop option; [@option]
  token_num_uses : float prop option; [@option]
  token_period : float prop option; [@option]
  token_policies : string prop list option; [@option]
  token_ttl : float prop option; [@option]
  token_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_cert_auth_backend_role) -> ()

let yojson_of_vault_cert_auth_backend_role =
  (function
   | {
       allowed_common_names = v_allowed_common_names;
       allowed_dns_sans = v_allowed_dns_sans;
       allowed_email_sans = v_allowed_email_sans;
       allowed_names = v_allowed_names;
       allowed_organizational_units = v_allowed_organizational_units;
       allowed_uri_sans = v_allowed_uri_sans;
       backend = v_backend;
       certificate = v_certificate;
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       namespace = v_namespace;
       ocsp_ca_certificates = v_ocsp_ca_certificates;
       ocsp_enabled = v_ocsp_enabled;
       ocsp_fail_open = v_ocsp_fail_open;
       ocsp_query_all_servers = v_ocsp_query_all_servers;
       ocsp_servers_override = v_ocsp_servers_override;
       required_extensions = v_required_extensions;
       token_bound_cidrs = v_token_bound_cidrs;
       token_explicit_max_ttl = v_token_explicit_max_ttl;
       token_max_ttl = v_token_max_ttl;
       token_no_default_policy = v_token_no_default_policy;
       token_num_uses = v_token_num_uses;
       token_period = v_token_period;
       token_policies = v_token_policies;
       token_ttl = v_token_ttl;
       token_type = v_token_type;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_required_extensions with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "required_extensions", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ocsp_servers_override with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "ocsp_servers_override", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ocsp_query_all_servers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "ocsp_query_all_servers", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ocsp_fail_open with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "ocsp_fail_open", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ocsp_enabled with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "ocsp_enabled", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ocsp_ca_certificates with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ocsp_ca_certificates", arg in
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
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
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
       match v_display_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "display_name", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_certificate in
       ("certificate", arg) :: bnds
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
       match v_allowed_uri_sans with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_uri_sans", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_organizational_units with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_organizational_units", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_names with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_names", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_email_sans with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_email_sans", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_dns_sans with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_dns_sans", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_common_names with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_common_names", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_cert_auth_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_cert_auth_backend_role

[@@@deriving.end]

let vault_cert_auth_backend_role ?allowed_common_names ?allowed_dns_sans ?allowed_email_sans ?allowed_names
  ?allowed_organizational_units ?allowed_uri_sans ?backend ?display_name ?id ?namespace ?ocsp_ca_certificates
  ?ocsp_enabled ?ocsp_fail_open ?ocsp_query_all_servers ?ocsp_servers_override ?required_extensions ?token_bound_cidrs
  ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies
  ?token_ttl ?token_type ~certificate ~name () =
  ({
     allowed_common_names;
     allowed_dns_sans;
     allowed_email_sans;
     allowed_names;
     allowed_organizational_units;
     allowed_uri_sans;
     backend;
     certificate;
     display_name;
     id;
     name;
     namespace;
     ocsp_ca_certificates;
     ocsp_enabled;
     ocsp_fail_open;
     ocsp_query_all_servers;
     ocsp_servers_override;
     required_extensions;
     token_bound_cidrs;
     token_explicit_max_ttl;
     token_max_ttl;
     token_no_default_policy;
     token_num_uses;
     token_period;
     token_policies;
     token_ttl;
     token_type;
   }
    : vault_cert_auth_backend_role)

type t = {
  tf_name : string;
  allowed_common_names : string list prop;
  allowed_dns_sans : string list prop;
  allowed_email_sans : string list prop;
  allowed_names : string list prop;
  allowed_organizational_units : string list prop;
  allowed_uri_sans : string list prop;
  backend : string prop;
  certificate : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  ocsp_ca_certificates : string prop;
  ocsp_enabled : bool prop;
  ocsp_fail_open : bool prop;
  ocsp_query_all_servers : bool prop;
  ocsp_servers_override : string list prop;
  required_extensions : string list prop;
  token_bound_cidrs : string list prop;
  token_explicit_max_ttl : float prop;
  token_max_ttl : float prop;
  token_no_default_policy : bool prop;
  token_num_uses : float prop;
  token_period : float prop;
  token_policies : string list prop;
  token_ttl : float prop;
  token_type : string prop;
}

let make ?allowed_common_names ?allowed_dns_sans ?allowed_email_sans ?allowed_names ?allowed_organizational_units
  ?allowed_uri_sans ?backend ?display_name ?id ?namespace ?ocsp_ca_certificates ?ocsp_enabled ?ocsp_fail_open
  ?ocsp_query_all_servers ?ocsp_servers_override ?required_extensions ?token_bound_cidrs ?token_explicit_max_ttl
  ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type
  ~certificate ~name __id =
  let __type = "vault_cert_auth_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_common_names = Prop.computed __type __id "allowed_common_names";
       allowed_dns_sans = Prop.computed __type __id "allowed_dns_sans";
       allowed_email_sans = Prop.computed __type __id "allowed_email_sans";
       allowed_names = Prop.computed __type __id "allowed_names";
       allowed_organizational_units = Prop.computed __type __id "allowed_organizational_units";
       allowed_uri_sans = Prop.computed __type __id "allowed_uri_sans";
       backend = Prop.computed __type __id "backend";
       certificate = Prop.computed __type __id "certificate";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       ocsp_ca_certificates = Prop.computed __type __id "ocsp_ca_certificates";
       ocsp_enabled = Prop.computed __type __id "ocsp_enabled";
       ocsp_fail_open = Prop.computed __type __id "ocsp_fail_open";
       ocsp_query_all_servers = Prop.computed __type __id "ocsp_query_all_servers";
       ocsp_servers_override = Prop.computed __type __id "ocsp_servers_override";
       required_extensions = Prop.computed __type __id "required_extensions";
       token_bound_cidrs = Prop.computed __type __id "token_bound_cidrs";
       token_explicit_max_ttl = Prop.computed __type __id "token_explicit_max_ttl";
       token_max_ttl = Prop.computed __type __id "token_max_ttl";
       token_no_default_policy = Prop.computed __type __id "token_no_default_policy";
       token_num_uses = Prop.computed __type __id "token_num_uses";
       token_period = Prop.computed __type __id "token_period";
       token_policies = Prop.computed __type __id "token_policies";
       token_ttl = Prop.computed __type __id "token_ttl";
       token_type = Prop.computed __type __id "token_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_cert_auth_backend_role
        (vault_cert_auth_backend_role ?allowed_common_names ?allowed_dns_sans ?allowed_email_sans ?allowed_names
           ?allowed_organizational_units ?allowed_uri_sans ?backend ?display_name ?id ?namespace ?ocsp_ca_certificates
           ?ocsp_enabled ?ocsp_fail_open ?ocsp_query_all_servers ?ocsp_servers_override ?required_extensions
           ?token_bound_cidrs ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses
           ?token_period ?token_policies ?token_ttl ?token_type ~certificate ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_common_names ?allowed_dns_sans ?allowed_email_sans ?allowed_names
  ?allowed_organizational_units ?allowed_uri_sans ?backend ?display_name ?id ?namespace ?ocsp_ca_certificates
  ?ocsp_enabled ?ocsp_fail_open ?ocsp_query_all_servers ?ocsp_servers_override ?required_extensions ?token_bound_cidrs
  ?token_explicit_max_ttl ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies
  ?token_ttl ?token_type ~certificate ~name __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_common_names ?allowed_dns_sans ?allowed_email_sans ?allowed_names ?allowed_organizational_units
      ?allowed_uri_sans ?backend ?display_name ?id ?namespace ?ocsp_ca_certificates ?ocsp_enabled ?ocsp_fail_open
      ?ocsp_query_all_servers ?ocsp_servers_override ?required_extensions ?token_bound_cidrs ?token_explicit_max_ttl
      ?token_max_ttl ?token_no_default_policy ?token_num_uses ?token_period ?token_policies ?token_ttl ?token_type
      ~certificate ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

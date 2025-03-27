(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type policy_identifier = {
  cps : string prop option; [@option]
  notice : string prop option; [@option]
  oid : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_identifier) -> ()

let yojson_of_policy_identifier =
  (function
   | { cps = v_cps; notice = v_notice; oid = v_oid } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_oid in
       ("oid", arg) :: bnds
     in
     let bnds =
       match v_notice with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "notice", arg in
         bnd :: bnds
     in
     let bnds =
       match v_cps with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "cps", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : policy_identifier -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_identifier

[@@@deriving.end]

type vault_pki_secret_backend_role = {
  allow_any_name : bool prop option; [@option]
  allow_bare_domains : bool prop option; [@option]
  allow_glob_domains : bool prop option; [@option]
  allow_ip_sans : bool prop option; [@option]
  allow_localhost : bool prop option; [@option]
  allow_subdomains : bool prop option; [@option]
  allow_wildcard_certificates : bool prop option; [@option]
  allowed_domains : string prop list option; [@option]
  allowed_domains_template : bool prop option; [@option]
  allowed_other_sans : string prop list option; [@option]
  allowed_serial_numbers : string prop list option; [@option]
  allowed_uri_sans : string prop list option; [@option]
  allowed_uri_sans_template : bool prop option; [@option]
  allowed_user_ids : string prop list option; [@option]
  backend : string prop;
  basic_constraints_valid_for_non_ca : bool prop option; [@option]
  client_flag : bool prop option; [@option]
  cn_validations : string prop list option; [@option]
  code_signing_flag : bool prop option; [@option]
  country : string prop list option; [@option]
  email_protection_flag : bool prop option; [@option]
  enforce_hostnames : bool prop option; [@option]
  ext_key_usage : string prop list option; [@option]
  ext_key_usage_oids : string prop list option; [@option]
  generate_lease : bool prop option; [@option]
  id : string prop option; [@option]
  issuer_ref : string prop option; [@option]
  key_bits : float prop option; [@option]
  key_type : string prop option; [@option]
  key_usage : string prop list option; [@option]
  locality : string prop list option; [@option]
  max_ttl : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  no_store : bool prop option; [@option]
  no_store_metadata : bool prop option; [@option]
  not_after : string prop option; [@option]
  not_before_duration : string prop option; [@option]
  organization : string prop list option; [@option]
  ou : string prop list option; [@option]
  policy_identifiers : string prop list option; [@option]
  postal_code : string prop list option; [@option]
  province : string prop list option; [@option]
  require_cn : bool prop option; [@option]
  serial_number_source : string prop option; [@option]
  server_flag : bool prop option; [@option]
  signature_bits : float prop option; [@option]
  street_address : string prop list option; [@option]
  ttl : string prop option; [@option]
  use_csr_common_name : bool prop option; [@option]
  use_csr_sans : bool prop option; [@option]
  use_pss : bool prop option; [@option]
  policy_identifier : policy_identifier list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_role) -> ()

let yojson_of_vault_pki_secret_backend_role =
  (function
   | {
       allow_any_name = v_allow_any_name;
       allow_bare_domains = v_allow_bare_domains;
       allow_glob_domains = v_allow_glob_domains;
       allow_ip_sans = v_allow_ip_sans;
       allow_localhost = v_allow_localhost;
       allow_subdomains = v_allow_subdomains;
       allow_wildcard_certificates = v_allow_wildcard_certificates;
       allowed_domains = v_allowed_domains;
       allowed_domains_template = v_allowed_domains_template;
       allowed_other_sans = v_allowed_other_sans;
       allowed_serial_numbers = v_allowed_serial_numbers;
       allowed_uri_sans = v_allowed_uri_sans;
       allowed_uri_sans_template = v_allowed_uri_sans_template;
       allowed_user_ids = v_allowed_user_ids;
       backend = v_backend;
       basic_constraints_valid_for_non_ca = v_basic_constraints_valid_for_non_ca;
       client_flag = v_client_flag;
       cn_validations = v_cn_validations;
       code_signing_flag = v_code_signing_flag;
       country = v_country;
       email_protection_flag = v_email_protection_flag;
       enforce_hostnames = v_enforce_hostnames;
       ext_key_usage = v_ext_key_usage;
       ext_key_usage_oids = v_ext_key_usage_oids;
       generate_lease = v_generate_lease;
       id = v_id;
       issuer_ref = v_issuer_ref;
       key_bits = v_key_bits;
       key_type = v_key_type;
       key_usage = v_key_usage;
       locality = v_locality;
       max_ttl = v_max_ttl;
       name = v_name;
       namespace = v_namespace;
       no_store = v_no_store;
       no_store_metadata = v_no_store_metadata;
       not_after = v_not_after;
       not_before_duration = v_not_before_duration;
       organization = v_organization;
       ou = v_ou;
       policy_identifiers = v_policy_identifiers;
       postal_code = v_postal_code;
       province = v_province;
       require_cn = v_require_cn;
       serial_number_source = v_serial_number_source;
       server_flag = v_server_flag;
       signature_bits = v_signature_bits;
       street_address = v_street_address;
       ttl = v_ttl;
       use_csr_common_name = v_use_csr_common_name;
       use_csr_sans = v_use_csr_sans;
       use_pss = v_use_pss;
       policy_identifier = v_policy_identifier;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_policy_identifier then bnds
       else (
         let arg = (yojson_of_list yojson_of_policy_identifier) v_policy_identifier in
         let bnd = "policy_identifier", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_use_pss with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_pss", arg in
         bnd :: bnds
     in
     let bnds =
       match v_use_csr_sans with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_csr_sans", arg in
         bnd :: bnds
     in
     let bnds =
       match v_use_csr_common_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_csr_common_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_street_address with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "street_address", arg in
         bnd :: bnds
     in
     let bnds =
       match v_signature_bits with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "signature_bits", arg in
         bnd :: bnds
     in
     let bnds =
       match v_server_flag with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "server_flag", arg in
         bnd :: bnds
     in
     let bnds =
       match v_serial_number_source with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "serial_number_source", arg in
         bnd :: bnds
     in
     let bnds =
       match v_require_cn with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "require_cn", arg in
         bnd :: bnds
     in
     let bnds =
       match v_province with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "province", arg in
         bnd :: bnds
     in
     let bnds =
       match v_postal_code with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "postal_code", arg in
         bnd :: bnds
     in
     let bnds =
       match v_policy_identifiers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "policy_identifiers", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ou with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "ou", arg in
         bnd :: bnds
     in
     let bnds =
       match v_organization with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "organization", arg in
         bnd :: bnds
     in
     let bnds =
       match v_not_before_duration with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "not_before_duration", arg in
         bnd :: bnds
     in
     let bnds =
       match v_not_after with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "not_after", arg in
         bnd :: bnds
     in
     let bnds =
       match v_no_store_metadata with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "no_store_metadata", arg in
         bnd :: bnds
     in
     let bnds =
       match v_no_store with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "no_store", arg in
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
       match v_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "max_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_locality with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "locality", arg in
         bnd :: bnds
     in
     let bnds =
       match v_key_usage with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "key_usage", arg in
         bnd :: bnds
     in
     let bnds =
       match v_key_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_key_bits with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "key_bits", arg in
         bnd :: bnds
     in
     let bnds =
       match v_issuer_ref with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "issuer_ref", arg in
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
       match v_generate_lease with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "generate_lease", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ext_key_usage_oids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "ext_key_usage_oids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ext_key_usage with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "ext_key_usage", arg in
         bnd :: bnds
     in
     let bnds =
       match v_enforce_hostnames with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "enforce_hostnames", arg in
         bnd :: bnds
     in
     let bnds =
       match v_email_protection_flag with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "email_protection_flag", arg in
         bnd :: bnds
     in
     let bnds =
       match v_country with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "country", arg in
         bnd :: bnds
     in
     let bnds =
       match v_code_signing_flag with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "code_signing_flag", arg in
         bnd :: bnds
     in
     let bnds =
       match v_cn_validations with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "cn_validations", arg in
         bnd :: bnds
     in
     let bnds =
       match v_client_flag with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "client_flag", arg in
         bnd :: bnds
     in
     let bnds =
       match v_basic_constraints_valid_for_non_ca with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "basic_constraints_valid_for_non_ca", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     let bnds =
       match v_allowed_user_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_user_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_uri_sans_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allowed_uri_sans_template", arg in
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
       match v_allowed_serial_numbers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_serial_numbers", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_other_sans with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_other_sans", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_domains_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allowed_domains_template", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_domains with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_domains", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_wildcard_certificates with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_wildcard_certificates", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_subdomains with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_subdomains", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_localhost with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_localhost", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_ip_sans with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_ip_sans", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_glob_domains with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_glob_domains", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_bare_domains with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_bare_domains", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_any_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_any_name", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_role

[@@@deriving.end]

let policy_identifier ?cps ?notice ~oid () = ({ cps; notice; oid } : policy_identifier)

let vault_pki_secret_backend_role ?allow_any_name ?allow_bare_domains ?allow_glob_domains ?allow_ip_sans
  ?allow_localhost ?allow_subdomains ?allow_wildcard_certificates ?allowed_domains ?allowed_domains_template
  ?allowed_other_sans ?allowed_serial_numbers ?allowed_uri_sans ?allowed_uri_sans_template ?allowed_user_ids
  ?basic_constraints_valid_for_non_ca ?client_flag ?cn_validations ?code_signing_flag ?country ?email_protection_flag
  ?enforce_hostnames ?ext_key_usage ?ext_key_usage_oids ?generate_lease ?id ?issuer_ref ?key_bits ?key_type ?key_usage
  ?locality ?max_ttl ?namespace ?no_store ?no_store_metadata ?not_after ?not_before_duration ?organization ?ou
  ?policy_identifiers ?postal_code ?province ?require_cn ?serial_number_source ?server_flag ?signature_bits
  ?street_address ?ttl ?use_csr_common_name ?use_csr_sans ?use_pss ~backend ~name ~policy_identifier () =
  ({
     allow_any_name;
     allow_bare_domains;
     allow_glob_domains;
     allow_ip_sans;
     allow_localhost;
     allow_subdomains;
     allow_wildcard_certificates;
     allowed_domains;
     allowed_domains_template;
     allowed_other_sans;
     allowed_serial_numbers;
     allowed_uri_sans;
     allowed_uri_sans_template;
     allowed_user_ids;
     backend;
     basic_constraints_valid_for_non_ca;
     client_flag;
     cn_validations;
     code_signing_flag;
     country;
     email_protection_flag;
     enforce_hostnames;
     ext_key_usage;
     ext_key_usage_oids;
     generate_lease;
     id;
     issuer_ref;
     key_bits;
     key_type;
     key_usage;
     locality;
     max_ttl;
     name;
     namespace;
     no_store;
     no_store_metadata;
     not_after;
     not_before_duration;
     organization;
     ou;
     policy_identifiers;
     postal_code;
     province;
     require_cn;
     serial_number_source;
     server_flag;
     signature_bits;
     street_address;
     ttl;
     use_csr_common_name;
     use_csr_sans;
     use_pss;
     policy_identifier;
   }
    : vault_pki_secret_backend_role)

type t = {
  tf_name : string;
  allow_any_name : bool prop;
  allow_bare_domains : bool prop;
  allow_glob_domains : bool prop;
  allow_ip_sans : bool prop;
  allow_localhost : bool prop;
  allow_subdomains : bool prop;
  allow_wildcard_certificates : bool prop;
  allowed_domains : string list prop;
  allowed_domains_template : bool prop;
  allowed_other_sans : string list prop;
  allowed_serial_numbers : string list prop;
  allowed_uri_sans : string list prop;
  allowed_uri_sans_template : bool prop;
  allowed_user_ids : string list prop;
  backend : string prop;
  basic_constraints_valid_for_non_ca : bool prop;
  client_flag : bool prop;
  cn_validations : string list prop;
  code_signing_flag : bool prop;
  country : string list prop;
  email_protection_flag : bool prop;
  enforce_hostnames : bool prop;
  ext_key_usage : string list prop;
  ext_key_usage_oids : string list prop;
  generate_lease : bool prop;
  id : string prop;
  issuer_ref : string prop;
  key_bits : float prop;
  key_type : string prop;
  key_usage : string list prop;
  locality : string list prop;
  max_ttl : string prop;
  name : string prop;
  namespace : string prop;
  no_store : bool prop;
  no_store_metadata : bool prop;
  not_after : string prop;
  not_before_duration : string prop;
  organization : string list prop;
  ou : string list prop;
  policy_identifiers : string list prop;
  postal_code : string list prop;
  province : string list prop;
  require_cn : bool prop;
  serial_number_source : string prop;
  server_flag : bool prop;
  signature_bits : float prop;
  street_address : string list prop;
  ttl : string prop;
  use_csr_common_name : bool prop;
  use_csr_sans : bool prop;
  use_pss : bool prop;
}

let make ?allow_any_name ?allow_bare_domains ?allow_glob_domains ?allow_ip_sans ?allow_localhost ?allow_subdomains
  ?allow_wildcard_certificates ?allowed_domains ?allowed_domains_template ?allowed_other_sans ?allowed_serial_numbers
  ?allowed_uri_sans ?allowed_uri_sans_template ?allowed_user_ids ?basic_constraints_valid_for_non_ca ?client_flag
  ?cn_validations ?code_signing_flag ?country ?email_protection_flag ?enforce_hostnames ?ext_key_usage
  ?ext_key_usage_oids ?generate_lease ?id ?issuer_ref ?key_bits ?key_type ?key_usage ?locality ?max_ttl ?namespace
  ?no_store ?no_store_metadata ?not_after ?not_before_duration ?organization ?ou ?policy_identifiers ?postal_code
  ?province ?require_cn ?serial_number_source ?server_flag ?signature_bits ?street_address ?ttl ?use_csr_common_name
  ?use_csr_sans ?use_pss ~backend ~name ~policy_identifier __id =
  let __type = "vault_pki_secret_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       allow_any_name = Prop.computed __type __id "allow_any_name";
       allow_bare_domains = Prop.computed __type __id "allow_bare_domains";
       allow_glob_domains = Prop.computed __type __id "allow_glob_domains";
       allow_ip_sans = Prop.computed __type __id "allow_ip_sans";
       allow_localhost = Prop.computed __type __id "allow_localhost";
       allow_subdomains = Prop.computed __type __id "allow_subdomains";
       allow_wildcard_certificates = Prop.computed __type __id "allow_wildcard_certificates";
       allowed_domains = Prop.computed __type __id "allowed_domains";
       allowed_domains_template = Prop.computed __type __id "allowed_domains_template";
       allowed_other_sans = Prop.computed __type __id "allowed_other_sans";
       allowed_serial_numbers = Prop.computed __type __id "allowed_serial_numbers";
       allowed_uri_sans = Prop.computed __type __id "allowed_uri_sans";
       allowed_uri_sans_template = Prop.computed __type __id "allowed_uri_sans_template";
       allowed_user_ids = Prop.computed __type __id "allowed_user_ids";
       backend = Prop.computed __type __id "backend";
       basic_constraints_valid_for_non_ca = Prop.computed __type __id "basic_constraints_valid_for_non_ca";
       client_flag = Prop.computed __type __id "client_flag";
       cn_validations = Prop.computed __type __id "cn_validations";
       code_signing_flag = Prop.computed __type __id "code_signing_flag";
       country = Prop.computed __type __id "country";
       email_protection_flag = Prop.computed __type __id "email_protection_flag";
       enforce_hostnames = Prop.computed __type __id "enforce_hostnames";
       ext_key_usage = Prop.computed __type __id "ext_key_usage";
       ext_key_usage_oids = Prop.computed __type __id "ext_key_usage_oids";
       generate_lease = Prop.computed __type __id "generate_lease";
       id = Prop.computed __type __id "id";
       issuer_ref = Prop.computed __type __id "issuer_ref";
       key_bits = Prop.computed __type __id "key_bits";
       key_type = Prop.computed __type __id "key_type";
       key_usage = Prop.computed __type __id "key_usage";
       locality = Prop.computed __type __id "locality";
       max_ttl = Prop.computed __type __id "max_ttl";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       no_store = Prop.computed __type __id "no_store";
       no_store_metadata = Prop.computed __type __id "no_store_metadata";
       not_after = Prop.computed __type __id "not_after";
       not_before_duration = Prop.computed __type __id "not_before_duration";
       organization = Prop.computed __type __id "organization";
       ou = Prop.computed __type __id "ou";
       policy_identifiers = Prop.computed __type __id "policy_identifiers";
       postal_code = Prop.computed __type __id "postal_code";
       province = Prop.computed __type __id "province";
       require_cn = Prop.computed __type __id "require_cn";
       serial_number_source = Prop.computed __type __id "serial_number_source";
       server_flag = Prop.computed __type __id "server_flag";
       signature_bits = Prop.computed __type __id "signature_bits";
       street_address = Prop.computed __type __id "street_address";
       ttl = Prop.computed __type __id "ttl";
       use_csr_common_name = Prop.computed __type __id "use_csr_common_name";
       use_csr_sans = Prop.computed __type __id "use_csr_sans";
       use_pss = Prop.computed __type __id "use_pss";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_role
        (vault_pki_secret_backend_role ?allow_any_name ?allow_bare_domains ?allow_glob_domains ?allow_ip_sans
           ?allow_localhost ?allow_subdomains ?allow_wildcard_certificates ?allowed_domains ?allowed_domains_template
           ?allowed_other_sans ?allowed_serial_numbers ?allowed_uri_sans ?allowed_uri_sans_template ?allowed_user_ids
           ?basic_constraints_valid_for_non_ca ?client_flag ?cn_validations ?code_signing_flag ?country
           ?email_protection_flag ?enforce_hostnames ?ext_key_usage ?ext_key_usage_oids ?generate_lease ?id ?issuer_ref
           ?key_bits ?key_type ?key_usage ?locality ?max_ttl ?namespace ?no_store ?no_store_metadata ?not_after
           ?not_before_duration ?organization ?ou ?policy_identifiers ?postal_code ?province ?require_cn
           ?serial_number_source ?server_flag ?signature_bits ?street_address ?ttl ?use_csr_common_name ?use_csr_sans
           ?use_pss ~backend ~name ~policy_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_any_name ?allow_bare_domains ?allow_glob_domains ?allow_ip_sans ?allow_localhost
  ?allow_subdomains ?allow_wildcard_certificates ?allowed_domains ?allowed_domains_template ?allowed_other_sans
  ?allowed_serial_numbers ?allowed_uri_sans ?allowed_uri_sans_template ?allowed_user_ids
  ?basic_constraints_valid_for_non_ca ?client_flag ?cn_validations ?code_signing_flag ?country ?email_protection_flag
  ?enforce_hostnames ?ext_key_usage ?ext_key_usage_oids ?generate_lease ?id ?issuer_ref ?key_bits ?key_type ?key_usage
  ?locality ?max_ttl ?namespace ?no_store ?no_store_metadata ?not_after ?not_before_duration ?organization ?ou
  ?policy_identifiers ?postal_code ?province ?require_cn ?serial_number_source ?server_flag ?signature_bits
  ?street_address ?ttl ?use_csr_common_name ?use_csr_sans ?use_pss ~backend ~name ~policy_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?allow_any_name ?allow_bare_domains ?allow_glob_domains ?allow_ip_sans ?allow_localhost ?allow_subdomains
      ?allow_wildcard_certificates ?allowed_domains ?allowed_domains_template ?allowed_other_sans
      ?allowed_serial_numbers ?allowed_uri_sans ?allowed_uri_sans_template ?allowed_user_ids
      ?basic_constraints_valid_for_non_ca ?client_flag ?cn_validations ?code_signing_flag ?country
      ?email_protection_flag ?enforce_hostnames ?ext_key_usage ?ext_key_usage_oids ?generate_lease ?id ?issuer_ref
      ?key_bits ?key_type ?key_usage ?locality ?max_ttl ?namespace ?no_store ?no_store_metadata ?not_after
      ?not_before_duration ?organization ?ou ?policy_identifiers ?postal_code ?province ?require_cn
      ?serial_number_source ?server_flag ?signature_bits ?street_address ?ttl ?use_csr_common_name ?use_csr_sans
      ?use_pss ~backend ~name ~policy_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

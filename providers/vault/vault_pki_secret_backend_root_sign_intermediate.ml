(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_root_sign_intermediate = {
  alt_names : string prop list option; [@option]
  backend : string prop;
  common_name : string prop;
  country : string prop option; [@option]
  csr : string prop;
  exclude_cn_from_sans : bool prop option; [@option]
  excluded_dns_domains : string prop list option; [@option]
  excluded_email_addresses : string prop list option; [@option]
  excluded_ip_ranges : string prop list option; [@option]
  excluded_uri_domains : string prop list option; [@option]
  format : string prop option; [@option]
  id : string prop option; [@option]
  ip_sans : string prop list option; [@option]
  issuer_ref : string prop option; [@option]
  locality : string prop option; [@option]
  max_path_length : float prop option; [@option]
  namespace : string prop option; [@option]
  not_after : string prop option; [@option]
  not_before_duration : string prop option; [@option]
  organization : string prop option; [@option]
  other_sans : string prop list option; [@option]
  ou : string prop option; [@option]
  permitted_dns_domains : string prop list option; [@option]
  permitted_email_addresses : string prop list option; [@option]
  permitted_ip_ranges : string prop list option; [@option]
  permitted_uri_domains : string prop list option; [@option]
  postal_code : string prop option; [@option]
  province : string prop option; [@option]
  revoke : bool prop option; [@option]
  signature_bits : float prop option; [@option]
  skid : string prop option; [@option]
  street_address : string prop option; [@option]
  ttl : string prop option; [@option]
  uri_sans : string prop list option; [@option]
  use_csr_values : bool prop option; [@option]
  use_pss : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_root_sign_intermediate) -> ()

let yojson_of_vault_pki_secret_backend_root_sign_intermediate =
  (function
   | {
       alt_names = v_alt_names;
       backend = v_backend;
       common_name = v_common_name;
       country = v_country;
       csr = v_csr;
       exclude_cn_from_sans = v_exclude_cn_from_sans;
       excluded_dns_domains = v_excluded_dns_domains;
       excluded_email_addresses = v_excluded_email_addresses;
       excluded_ip_ranges = v_excluded_ip_ranges;
       excluded_uri_domains = v_excluded_uri_domains;
       format = v_format;
       id = v_id;
       ip_sans = v_ip_sans;
       issuer_ref = v_issuer_ref;
       locality = v_locality;
       max_path_length = v_max_path_length;
       namespace = v_namespace;
       not_after = v_not_after;
       not_before_duration = v_not_before_duration;
       organization = v_organization;
       other_sans = v_other_sans;
       ou = v_ou;
       permitted_dns_domains = v_permitted_dns_domains;
       permitted_email_addresses = v_permitted_email_addresses;
       permitted_ip_ranges = v_permitted_ip_ranges;
       permitted_uri_domains = v_permitted_uri_domains;
       postal_code = v_postal_code;
       province = v_province;
       revoke = v_revoke;
       signature_bits = v_signature_bits;
       skid = v_skid;
       street_address = v_street_address;
       ttl = v_ttl;
       uri_sans = v_uri_sans;
       use_csr_values = v_use_csr_values;
       use_pss = v_use_pss;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_use_pss with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_pss", arg in
         bnd :: bnds
     in
     let bnds =
       match v_use_csr_values with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_csr_values", arg in
         bnd :: bnds
     in
     let bnds =
       match v_uri_sans with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "uri_sans", arg in
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
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "street_address", arg in
         bnd :: bnds
     in
     let bnds =
       match v_skid with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "skid", arg in
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
       match v_revoke with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "revoke", arg in
         bnd :: bnds
     in
     let bnds =
       match v_province with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "province", arg in
         bnd :: bnds
     in
     let bnds =
       match v_postal_code with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "postal_code", arg in
         bnd :: bnds
     in
     let bnds =
       match v_permitted_uri_domains with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "permitted_uri_domains", arg in
         bnd :: bnds
     in
     let bnds =
       match v_permitted_ip_ranges with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "permitted_ip_ranges", arg in
         bnd :: bnds
     in
     let bnds =
       match v_permitted_email_addresses with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "permitted_email_addresses", arg in
         bnd :: bnds
     in
     let bnds =
       match v_permitted_dns_domains with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "permitted_dns_domains", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ou with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ou", arg in
         bnd :: bnds
     in
     let bnds =
       match v_other_sans with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "other_sans", arg in
         bnd :: bnds
     in
     let bnds =
       match v_organization with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
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
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_path_length with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_path_length", arg in
         bnd :: bnds
     in
     let bnds =
       match v_locality with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "locality", arg in
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
       match v_ip_sans with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "ip_sans", arg in
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
       match v_format with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "format", arg in
         bnd :: bnds
     in
     let bnds =
       match v_excluded_uri_domains with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "excluded_uri_domains", arg in
         bnd :: bnds
     in
     let bnds =
       match v_excluded_ip_ranges with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "excluded_ip_ranges", arg in
         bnd :: bnds
     in
     let bnds =
       match v_excluded_email_addresses with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "excluded_email_addresses", arg in
         bnd :: bnds
     in
     let bnds =
       match v_excluded_dns_domains with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "excluded_dns_domains", arg in
         bnd :: bnds
     in
     let bnds =
       match v_exclude_cn_from_sans with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "exclude_cn_from_sans", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_csr in
       ("csr", arg) :: bnds
     in
     let bnds =
       match v_country with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "country", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_common_name in
       ("common_name", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     let bnds =
       match v_alt_names with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "alt_names", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_root_sign_intermediate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_root_sign_intermediate

[@@@deriving.end]

let vault_pki_secret_backend_root_sign_intermediate ?alt_names ?country ?exclude_cn_from_sans ?excluded_dns_domains
  ?excluded_email_addresses ?excluded_ip_ranges ?excluded_uri_domains ?format ?id ?ip_sans ?issuer_ref ?locality
  ?max_path_length ?namespace ?not_after ?not_before_duration ?organization ?other_sans ?ou ?permitted_dns_domains
  ?permitted_email_addresses ?permitted_ip_ranges ?permitted_uri_domains ?postal_code ?province ?revoke ?signature_bits
  ?skid ?street_address ?ttl ?uri_sans ?use_csr_values ?use_pss ~backend ~common_name ~csr () =
  ({
     alt_names;
     backend;
     common_name;
     country;
     csr;
     exclude_cn_from_sans;
     excluded_dns_domains;
     excluded_email_addresses;
     excluded_ip_ranges;
     excluded_uri_domains;
     format;
     id;
     ip_sans;
     issuer_ref;
     locality;
     max_path_length;
     namespace;
     not_after;
     not_before_duration;
     organization;
     other_sans;
     ou;
     permitted_dns_domains;
     permitted_email_addresses;
     permitted_ip_ranges;
     permitted_uri_domains;
     postal_code;
     province;
     revoke;
     signature_bits;
     skid;
     street_address;
     ttl;
     uri_sans;
     use_csr_values;
     use_pss;
   }
    : vault_pki_secret_backend_root_sign_intermediate)

type t = {
  tf_name : string;
  alt_names : string list prop;
  backend : string prop;
  ca_chain : string list prop;
  certificate : string prop;
  certificate_bundle : string prop;
  common_name : string prop;
  country : string prop;
  csr : string prop;
  exclude_cn_from_sans : bool prop;
  excluded_dns_domains : string list prop;
  excluded_email_addresses : string list prop;
  excluded_ip_ranges : string list prop;
  excluded_uri_domains : string list prop;
  format : string prop;
  id : string prop;
  ip_sans : string list prop;
  issuer_ref : string prop;
  issuing_ca : string prop;
  locality : string prop;
  max_path_length : float prop;
  namespace : string prop;
  not_after : string prop;
  not_before_duration : string prop;
  organization : string prop;
  other_sans : string list prop;
  ou : string prop;
  permitted_dns_domains : string list prop;
  permitted_email_addresses : string list prop;
  permitted_ip_ranges : string list prop;
  permitted_uri_domains : string list prop;
  postal_code : string prop;
  province : string prop;
  revoke : bool prop;
  serial_number : string prop;
  signature_bits : float prop;
  skid : string prop;
  street_address : string prop;
  ttl : string prop;
  uri_sans : string list prop;
  use_csr_values : bool prop;
  use_pss : bool prop;
}

let make ?alt_names ?country ?exclude_cn_from_sans ?excluded_dns_domains ?excluded_email_addresses ?excluded_ip_ranges
  ?excluded_uri_domains ?format ?id ?ip_sans ?issuer_ref ?locality ?max_path_length ?namespace ?not_after
  ?not_before_duration ?organization ?other_sans ?ou ?permitted_dns_domains ?permitted_email_addresses
  ?permitted_ip_ranges ?permitted_uri_domains ?postal_code ?province ?revoke ?signature_bits ?skid ?street_address ?ttl
  ?uri_sans ?use_csr_values ?use_pss ~backend ~common_name ~csr __id =
  let __type = "vault_pki_secret_backend_root_sign_intermediate" in
  let __attrs =
    ({
       tf_name = __id;
       alt_names = Prop.computed __type __id "alt_names";
       backend = Prop.computed __type __id "backend";
       ca_chain = Prop.computed __type __id "ca_chain";
       certificate = Prop.computed __type __id "certificate";
       certificate_bundle = Prop.computed __type __id "certificate_bundle";
       common_name = Prop.computed __type __id "common_name";
       country = Prop.computed __type __id "country";
       csr = Prop.computed __type __id "csr";
       exclude_cn_from_sans = Prop.computed __type __id "exclude_cn_from_sans";
       excluded_dns_domains = Prop.computed __type __id "excluded_dns_domains";
       excluded_email_addresses = Prop.computed __type __id "excluded_email_addresses";
       excluded_ip_ranges = Prop.computed __type __id "excluded_ip_ranges";
       excluded_uri_domains = Prop.computed __type __id "excluded_uri_domains";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       ip_sans = Prop.computed __type __id "ip_sans";
       issuer_ref = Prop.computed __type __id "issuer_ref";
       issuing_ca = Prop.computed __type __id "issuing_ca";
       locality = Prop.computed __type __id "locality";
       max_path_length = Prop.computed __type __id "max_path_length";
       namespace = Prop.computed __type __id "namespace";
       not_after = Prop.computed __type __id "not_after";
       not_before_duration = Prop.computed __type __id "not_before_duration";
       organization = Prop.computed __type __id "organization";
       other_sans = Prop.computed __type __id "other_sans";
       ou = Prop.computed __type __id "ou";
       permitted_dns_domains = Prop.computed __type __id "permitted_dns_domains";
       permitted_email_addresses = Prop.computed __type __id "permitted_email_addresses";
       permitted_ip_ranges = Prop.computed __type __id "permitted_ip_ranges";
       permitted_uri_domains = Prop.computed __type __id "permitted_uri_domains";
       postal_code = Prop.computed __type __id "postal_code";
       province = Prop.computed __type __id "province";
       revoke = Prop.computed __type __id "revoke";
       serial_number = Prop.computed __type __id "serial_number";
       signature_bits = Prop.computed __type __id "signature_bits";
       skid = Prop.computed __type __id "skid";
       street_address = Prop.computed __type __id "street_address";
       ttl = Prop.computed __type __id "ttl";
       uri_sans = Prop.computed __type __id "uri_sans";
       use_csr_values = Prop.computed __type __id "use_csr_values";
       use_pss = Prop.computed __type __id "use_pss";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_root_sign_intermediate
        (vault_pki_secret_backend_root_sign_intermediate ?alt_names ?country ?exclude_cn_from_sans ?excluded_dns_domains
           ?excluded_email_addresses ?excluded_ip_ranges ?excluded_uri_domains ?format ?id ?ip_sans ?issuer_ref
           ?locality ?max_path_length ?namespace ?not_after ?not_before_duration ?organization ?other_sans ?ou
           ?permitted_dns_domains ?permitted_email_addresses ?permitted_ip_ranges ?permitted_uri_domains ?postal_code
           ?province ?revoke ?signature_bits ?skid ?street_address ?ttl ?uri_sans ?use_csr_values ?use_pss ~backend
           ~common_name ~csr ());
    attrs = __attrs;
  }

let register ?tf_module ?alt_names ?country ?exclude_cn_from_sans ?excluded_dns_domains ?excluded_email_addresses
  ?excluded_ip_ranges ?excluded_uri_domains ?format ?id ?ip_sans ?issuer_ref ?locality ?max_path_length ?namespace
  ?not_after ?not_before_duration ?organization ?other_sans ?ou ?permitted_dns_domains ?permitted_email_addresses
  ?permitted_ip_ranges ?permitted_uri_domains ?postal_code ?province ?revoke ?signature_bits ?skid ?street_address ?ttl
  ?uri_sans ?use_csr_values ?use_pss ~backend ~common_name ~csr __id =
  let (r : _ Tf_core.resource) =
    make ?alt_names ?country ?exclude_cn_from_sans ?excluded_dns_domains ?excluded_email_addresses ?excluded_ip_ranges
      ?excluded_uri_domains ?format ?id ?ip_sans ?issuer_ref ?locality ?max_path_length ?namespace ?not_after
      ?not_before_duration ?organization ?other_sans ?ou ?permitted_dns_domains ?permitted_email_addresses
      ?permitted_ip_ranges ?permitted_uri_domains ?postal_code ?province ?revoke ?signature_bits ?skid ?street_address
      ?ttl ?uri_sans ?use_csr_values ?use_pss ~backend ~common_name ~csr __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

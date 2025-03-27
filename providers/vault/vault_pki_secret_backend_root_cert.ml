(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_root_cert = {
  alt_names : string prop list option; [@option]
  backend : string prop;
  common_name : string prop;
  country : string prop option; [@option]
  exclude_cn_from_sans : bool prop option; [@option]
  excluded_dns_domains : string prop list option; [@option]
  excluded_email_addresses : string prop list option; [@option]
  excluded_ip_ranges : string prop list option; [@option]
  excluded_uri_domains : string prop list option; [@option]
  format : string prop option; [@option]
  id : string prop option; [@option]
  ip_sans : string prop list option; [@option]
  issuer_name : string prop option; [@option]
  key_bits : float prop option; [@option]
  key_name : string prop option; [@option]
  key_ref : string prop option; [@option]
  key_type : string prop option; [@option]
  locality : string prop option; [@option]
  managed_key_id : string prop option; [@option]
  managed_key_name : string prop option; [@option]
  max_path_length : float prop option; [@option]
  namespace : string prop option; [@option]
  not_after : string prop option; [@option]
  organization : string prop option; [@option]
  other_sans : string prop list option; [@option]
  ou : string prop option; [@option]
  permitted_dns_domains : string prop list option; [@option]
  permitted_email_addresses : string prop list option; [@option]
  permitted_ip_ranges : string prop list option; [@option]
  permitted_uri_domains : string prop list option; [@option]
  postal_code : string prop option; [@option]
  private_key_format : string prop option; [@option]
  province : string prop option; [@option]
  signature_bits : float prop option; [@option]
  street_address : string prop option; [@option]
  ttl : string prop option; [@option]
  type_ : string prop; [@key "type"]
  uri_sans : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_root_cert) -> ()

let yojson_of_vault_pki_secret_backend_root_cert =
  (function
   | {
       alt_names = v_alt_names;
       backend = v_backend;
       common_name = v_common_name;
       country = v_country;
       exclude_cn_from_sans = v_exclude_cn_from_sans;
       excluded_dns_domains = v_excluded_dns_domains;
       excluded_email_addresses = v_excluded_email_addresses;
       excluded_ip_ranges = v_excluded_ip_ranges;
       excluded_uri_domains = v_excluded_uri_domains;
       format = v_format;
       id = v_id;
       ip_sans = v_ip_sans;
       issuer_name = v_issuer_name;
       key_bits = v_key_bits;
       key_name = v_key_name;
       key_ref = v_key_ref;
       key_type = v_key_type;
       locality = v_locality;
       managed_key_id = v_managed_key_id;
       managed_key_name = v_managed_key_name;
       max_path_length = v_max_path_length;
       namespace = v_namespace;
       not_after = v_not_after;
       organization = v_organization;
       other_sans = v_other_sans;
       ou = v_ou;
       permitted_dns_domains = v_permitted_dns_domains;
       permitted_email_addresses = v_permitted_email_addresses;
       permitted_ip_ranges = v_permitted_ip_ranges;
       permitted_uri_domains = v_permitted_uri_domains;
       postal_code = v_postal_code;
       private_key_format = v_private_key_format;
       province = v_province;
       signature_bits = v_signature_bits;
       street_address = v_street_address;
       ttl = v_ttl;
       type_ = v_type_;
       uri_sans = v_uri_sans;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_uri_sans with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "uri_sans", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_type_ in
       ("type", arg) :: bnds
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
       match v_signature_bits with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "signature_bits", arg in
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
       match v_private_key_format with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "private_key_format", arg in
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
       match v_managed_key_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "managed_key_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_managed_key_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "managed_key_id", arg in
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
       match v_key_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_key_ref with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_ref", arg in
         bnd :: bnds
     in
     let bnds =
       match v_key_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_name", arg in
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
       match v_issuer_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "issuer_name", arg in
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
    : vault_pki_secret_backend_root_cert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_root_cert

[@@@deriving.end]

let vault_pki_secret_backend_root_cert ?alt_names ?country ?exclude_cn_from_sans ?excluded_dns_domains
  ?excluded_email_addresses ?excluded_ip_ranges ?excluded_uri_domains ?format ?id ?ip_sans ?issuer_name ?key_bits
  ?key_name ?key_ref ?key_type ?locality ?managed_key_id ?managed_key_name ?max_path_length ?namespace ?not_after
  ?organization ?other_sans ?ou ?permitted_dns_domains ?permitted_email_addresses ?permitted_ip_ranges
  ?permitted_uri_domains ?postal_code ?private_key_format ?province ?signature_bits ?street_address ?ttl ?uri_sans
  ~backend ~common_name ~type_ () =
  ({
     alt_names;
     backend;
     common_name;
     country;
     exclude_cn_from_sans;
     excluded_dns_domains;
     excluded_email_addresses;
     excluded_ip_ranges;
     excluded_uri_domains;
     format;
     id;
     ip_sans;
     issuer_name;
     key_bits;
     key_name;
     key_ref;
     key_type;
     locality;
     managed_key_id;
     managed_key_name;
     max_path_length;
     namespace;
     not_after;
     organization;
     other_sans;
     ou;
     permitted_dns_domains;
     permitted_email_addresses;
     permitted_ip_ranges;
     permitted_uri_domains;
     postal_code;
     private_key_format;
     province;
     signature_bits;
     street_address;
     ttl;
     type_;
     uri_sans;
   }
    : vault_pki_secret_backend_root_cert)

type t = {
  tf_name : string;
  alt_names : string list prop;
  backend : string prop;
  certificate : string prop;
  common_name : string prop;
  country : string prop;
  exclude_cn_from_sans : bool prop;
  excluded_dns_domains : string list prop;
  excluded_email_addresses : string list prop;
  excluded_ip_ranges : string list prop;
  excluded_uri_domains : string list prop;
  format : string prop;
  id : string prop;
  ip_sans : string list prop;
  issuer_id : string prop;
  issuer_name : string prop;
  issuing_ca : string prop;
  key_bits : float prop;
  key_id : string prop;
  key_name : string prop;
  key_ref : string prop;
  key_type : string prop;
  locality : string prop;
  managed_key_id : string prop;
  managed_key_name : string prop;
  max_path_length : float prop;
  namespace : string prop;
  not_after : string prop;
  organization : string prop;
  other_sans : string list prop;
  ou : string prop;
  permitted_dns_domains : string list prop;
  permitted_email_addresses : string list prop;
  permitted_ip_ranges : string list prop;
  permitted_uri_domains : string list prop;
  postal_code : string prop;
  private_key_format : string prop;
  province : string prop;
  serial_number : string prop;
  signature_bits : float prop;
  street_address : string prop;
  ttl : string prop;
  type_ : string prop;
  uri_sans : string list prop;
}

let make ?alt_names ?country ?exclude_cn_from_sans ?excluded_dns_domains ?excluded_email_addresses ?excluded_ip_ranges
  ?excluded_uri_domains ?format ?id ?ip_sans ?issuer_name ?key_bits ?key_name ?key_ref ?key_type ?locality
  ?managed_key_id ?managed_key_name ?max_path_length ?namespace ?not_after ?organization ?other_sans ?ou
  ?permitted_dns_domains ?permitted_email_addresses ?permitted_ip_ranges ?permitted_uri_domains ?postal_code
  ?private_key_format ?province ?signature_bits ?street_address ?ttl ?uri_sans ~backend ~common_name ~type_ __id =
  let __type = "vault_pki_secret_backend_root_cert" in
  let __attrs =
    ({
       tf_name = __id;
       alt_names = Prop.computed __type __id "alt_names";
       backend = Prop.computed __type __id "backend";
       certificate = Prop.computed __type __id "certificate";
       common_name = Prop.computed __type __id "common_name";
       country = Prop.computed __type __id "country";
       exclude_cn_from_sans = Prop.computed __type __id "exclude_cn_from_sans";
       excluded_dns_domains = Prop.computed __type __id "excluded_dns_domains";
       excluded_email_addresses = Prop.computed __type __id "excluded_email_addresses";
       excluded_ip_ranges = Prop.computed __type __id "excluded_ip_ranges";
       excluded_uri_domains = Prop.computed __type __id "excluded_uri_domains";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       ip_sans = Prop.computed __type __id "ip_sans";
       issuer_id = Prop.computed __type __id "issuer_id";
       issuer_name = Prop.computed __type __id "issuer_name";
       issuing_ca = Prop.computed __type __id "issuing_ca";
       key_bits = Prop.computed __type __id "key_bits";
       key_id = Prop.computed __type __id "key_id";
       key_name = Prop.computed __type __id "key_name";
       key_ref = Prop.computed __type __id "key_ref";
       key_type = Prop.computed __type __id "key_type";
       locality = Prop.computed __type __id "locality";
       managed_key_id = Prop.computed __type __id "managed_key_id";
       managed_key_name = Prop.computed __type __id "managed_key_name";
       max_path_length = Prop.computed __type __id "max_path_length";
       namespace = Prop.computed __type __id "namespace";
       not_after = Prop.computed __type __id "not_after";
       organization = Prop.computed __type __id "organization";
       other_sans = Prop.computed __type __id "other_sans";
       ou = Prop.computed __type __id "ou";
       permitted_dns_domains = Prop.computed __type __id "permitted_dns_domains";
       permitted_email_addresses = Prop.computed __type __id "permitted_email_addresses";
       permitted_ip_ranges = Prop.computed __type __id "permitted_ip_ranges";
       permitted_uri_domains = Prop.computed __type __id "permitted_uri_domains";
       postal_code = Prop.computed __type __id "postal_code";
       private_key_format = Prop.computed __type __id "private_key_format";
       province = Prop.computed __type __id "province";
       serial_number = Prop.computed __type __id "serial_number";
       signature_bits = Prop.computed __type __id "signature_bits";
       street_address = Prop.computed __type __id "street_address";
       ttl = Prop.computed __type __id "ttl";
       type_ = Prop.computed __type __id "type";
       uri_sans = Prop.computed __type __id "uri_sans";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_root_cert
        (vault_pki_secret_backend_root_cert ?alt_names ?country ?exclude_cn_from_sans ?excluded_dns_domains
           ?excluded_email_addresses ?excluded_ip_ranges ?excluded_uri_domains ?format ?id ?ip_sans ?issuer_name
           ?key_bits ?key_name ?key_ref ?key_type ?locality ?managed_key_id ?managed_key_name ?max_path_length
           ?namespace ?not_after ?organization ?other_sans ?ou ?permitted_dns_domains ?permitted_email_addresses
           ?permitted_ip_ranges ?permitted_uri_domains ?postal_code ?private_key_format ?province ?signature_bits
           ?street_address ?ttl ?uri_sans ~backend ~common_name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?alt_names ?country ?exclude_cn_from_sans ?excluded_dns_domains ?excluded_email_addresses
  ?excluded_ip_ranges ?excluded_uri_domains ?format ?id ?ip_sans ?issuer_name ?key_bits ?key_name ?key_ref ?key_type
  ?locality ?managed_key_id ?managed_key_name ?max_path_length ?namespace ?not_after ?organization ?other_sans ?ou
  ?permitted_dns_domains ?permitted_email_addresses ?permitted_ip_ranges ?permitted_uri_domains ?postal_code
  ?private_key_format ?province ?signature_bits ?street_address ?ttl ?uri_sans ~backend ~common_name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?alt_names ?country ?exclude_cn_from_sans ?excluded_dns_domains ?excluded_email_addresses ?excluded_ip_ranges
      ?excluded_uri_domains ?format ?id ?ip_sans ?issuer_name ?key_bits ?key_name ?key_ref ?key_type ?locality
      ?managed_key_id ?managed_key_name ?max_path_length ?namespace ?not_after ?organization ?other_sans ?ou
      ?permitted_dns_domains ?permitted_email_addresses ?permitted_ip_ranges ?permitted_uri_domains ?postal_code
      ?private_key_format ?province ?signature_bits ?street_address ?ttl ?uri_sans ~backend ~common_name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

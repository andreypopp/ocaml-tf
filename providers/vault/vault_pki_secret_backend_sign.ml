(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_sign = {
  alt_names : string prop list option; [@option]
  auto_renew : bool prop option; [@option]
  backend : string prop;
  cert_metadata : string prop option; [@option]
  common_name : string prop;
  csr : string prop;
  exclude_cn_from_sans : bool prop option; [@option]
  format : string prop option; [@option]
  id : string prop option; [@option]
  ip_sans : string prop list option; [@option]
  issuer_ref : string prop option; [@option]
  min_seconds_remaining : float prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  not_after : string prop option; [@option]
  other_sans : string prop list option; [@option]
  ttl : string prop option; [@option]
  uri_sans : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_sign) -> ()

let yojson_of_vault_pki_secret_backend_sign =
  (function
   | {
       alt_names = v_alt_names;
       auto_renew = v_auto_renew;
       backend = v_backend;
       cert_metadata = v_cert_metadata;
       common_name = v_common_name;
       csr = v_csr;
       exclude_cn_from_sans = v_exclude_cn_from_sans;
       format = v_format;
       id = v_id;
       ip_sans = v_ip_sans;
       issuer_ref = v_issuer_ref;
       min_seconds_remaining = v_min_seconds_remaining;
       name = v_name;
       namespace = v_namespace;
       not_after = v_not_after;
       other_sans = v_other_sans;
       ttl = v_ttl;
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
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ttl", arg in
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
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_min_seconds_remaining with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "min_seconds_remaining", arg in
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
       let arg = yojson_of_prop yojson_of_string v_common_name in
       ("common_name", arg) :: bnds
     in
     let bnds =
       match v_cert_metadata with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "cert_metadata", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     let bnds =
       match v_auto_renew with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "auto_renew", arg in
         bnd :: bnds
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
    : vault_pki_secret_backend_sign -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_sign

[@@@deriving.end]

let vault_pki_secret_backend_sign ?alt_names ?auto_renew ?cert_metadata ?exclude_cn_from_sans ?format ?id ?ip_sans
  ?issuer_ref ?min_seconds_remaining ?namespace ?not_after ?other_sans ?ttl ?uri_sans ~backend ~common_name ~csr ~name
  () =
  ({
     alt_names;
     auto_renew;
     backend;
     cert_metadata;
     common_name;
     csr;
     exclude_cn_from_sans;
     format;
     id;
     ip_sans;
     issuer_ref;
     min_seconds_remaining;
     name;
     namespace;
     not_after;
     other_sans;
     ttl;
     uri_sans;
   }
    : vault_pki_secret_backend_sign)

type t = {
  tf_name : string;
  alt_names : string list prop;
  auto_renew : bool prop;
  backend : string prop;
  ca_chain : string list prop;
  cert_metadata : string prop;
  certificate : string prop;
  common_name : string prop;
  csr : string prop;
  exclude_cn_from_sans : bool prop;
  expiration : float prop;
  format : string prop;
  id : string prop;
  ip_sans : string list prop;
  issuer_ref : string prop;
  issuing_ca : string prop;
  min_seconds_remaining : float prop;
  name : string prop;
  namespace : string prop;
  not_after : string prop;
  other_sans : string list prop;
  renew_pending : bool prop;
  serial_number : string prop;
  ttl : string prop;
  uri_sans : string list prop;
}

let make ?alt_names ?auto_renew ?cert_metadata ?exclude_cn_from_sans ?format ?id ?ip_sans ?issuer_ref
  ?min_seconds_remaining ?namespace ?not_after ?other_sans ?ttl ?uri_sans ~backend ~common_name ~csr ~name __id =
  let __type = "vault_pki_secret_backend_sign" in
  let __attrs =
    ({
       tf_name = __id;
       alt_names = Prop.computed __type __id "alt_names";
       auto_renew = Prop.computed __type __id "auto_renew";
       backend = Prop.computed __type __id "backend";
       ca_chain = Prop.computed __type __id "ca_chain";
       cert_metadata = Prop.computed __type __id "cert_metadata";
       certificate = Prop.computed __type __id "certificate";
       common_name = Prop.computed __type __id "common_name";
       csr = Prop.computed __type __id "csr";
       exclude_cn_from_sans = Prop.computed __type __id "exclude_cn_from_sans";
       expiration = Prop.computed __type __id "expiration";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       ip_sans = Prop.computed __type __id "ip_sans";
       issuer_ref = Prop.computed __type __id "issuer_ref";
       issuing_ca = Prop.computed __type __id "issuing_ca";
       min_seconds_remaining = Prop.computed __type __id "min_seconds_remaining";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       not_after = Prop.computed __type __id "not_after";
       other_sans = Prop.computed __type __id "other_sans";
       renew_pending = Prop.computed __type __id "renew_pending";
       serial_number = Prop.computed __type __id "serial_number";
       ttl = Prop.computed __type __id "ttl";
       uri_sans = Prop.computed __type __id "uri_sans";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_sign
        (vault_pki_secret_backend_sign ?alt_names ?auto_renew ?cert_metadata ?exclude_cn_from_sans ?format ?id ?ip_sans
           ?issuer_ref ?min_seconds_remaining ?namespace ?not_after ?other_sans ?ttl ?uri_sans ~backend ~common_name
           ~csr ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?alt_names ?auto_renew ?cert_metadata ?exclude_cn_from_sans ?format ?id ?ip_sans ?issuer_ref
  ?min_seconds_remaining ?namespace ?not_after ?other_sans ?ttl ?uri_sans ~backend ~common_name ~csr ~name __id =
  let (r : _ Tf_core.resource) =
    make ?alt_names ?auto_renew ?cert_metadata ?exclude_cn_from_sans ?format ?id ?ip_sans ?issuer_ref
      ?min_seconds_remaining ?namespace ?not_after ?other_sans ?ttl ?uri_sans ~backend ~common_name ~csr ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

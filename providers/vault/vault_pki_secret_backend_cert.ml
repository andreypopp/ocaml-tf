(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_cert = {
  alt_names : string prop list option; [@option]
  auto_renew : bool prop option; [@option]
  backend : string prop;
  cert_metadata : string prop option; [@option]
  common_name : string prop;
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
  private_key_format : string prop option; [@option]
  revoke : bool prop option; [@option]
  revoke_with_key : bool prop option; [@option]
  ttl : string prop option; [@option]
  uri_sans : string prop list option; [@option]
  user_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_cert) -> ()

let yojson_of_vault_pki_secret_backend_cert =
  (function
   | {
       alt_names = v_alt_names;
       auto_renew = v_auto_renew;
       backend = v_backend;
       cert_metadata = v_cert_metadata;
       common_name = v_common_name;
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
       private_key_format = v_private_key_format;
       revoke = v_revoke;
       revoke_with_key = v_revoke_with_key;
       ttl = v_ttl;
       uri_sans = v_uri_sans;
       user_ids = v_user_ids;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_user_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "user_ids", arg in
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
       match v_revoke_with_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "revoke_with_key", arg in
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
       match v_private_key_format with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "private_key_format", arg in
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
    : vault_pki_secret_backend_cert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_cert

[@@@deriving.end]

let vault_pki_secret_backend_cert ?alt_names ?auto_renew ?cert_metadata ?exclude_cn_from_sans ?format ?id ?ip_sans
  ?issuer_ref ?min_seconds_remaining ?namespace ?not_after ?other_sans ?private_key_format ?revoke ?revoke_with_key ?ttl
  ?uri_sans ?user_ids ~backend ~common_name ~name () =
  ({
     alt_names;
     auto_renew;
     backend;
     cert_metadata;
     common_name;
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
     private_key_format;
     revoke;
     revoke_with_key;
     ttl;
     uri_sans;
     user_ids;
   }
    : vault_pki_secret_backend_cert)

type t = {
  tf_name : string;
  alt_names : string list prop;
  auto_renew : bool prop;
  backend : string prop;
  ca_chain : string prop;
  cert_metadata : string prop;
  certificate : string prop;
  common_name : string prop;
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
  private_key : string prop;
  private_key_format : string prop;
  private_key_type : string prop;
  renew_pending : bool prop;
  revoke : bool prop;
  revoke_with_key : bool prop;
  serial_number : string prop;
  ttl : string prop;
  uri_sans : string list prop;
  user_ids : string list prop;
}

let make ?alt_names ?auto_renew ?cert_metadata ?exclude_cn_from_sans ?format ?id ?ip_sans ?issuer_ref
  ?min_seconds_remaining ?namespace ?not_after ?other_sans ?private_key_format ?revoke ?revoke_with_key ?ttl ?uri_sans
  ?user_ids ~backend ~common_name ~name __id =
  let __type = "vault_pki_secret_backend_cert" in
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
       private_key = Prop.computed __type __id "private_key";
       private_key_format = Prop.computed __type __id "private_key_format";
       private_key_type = Prop.computed __type __id "private_key_type";
       renew_pending = Prop.computed __type __id "renew_pending";
       revoke = Prop.computed __type __id "revoke";
       revoke_with_key = Prop.computed __type __id "revoke_with_key";
       serial_number = Prop.computed __type __id "serial_number";
       ttl = Prop.computed __type __id "ttl";
       uri_sans = Prop.computed __type __id "uri_sans";
       user_ids = Prop.computed __type __id "user_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_cert
        (vault_pki_secret_backend_cert ?alt_names ?auto_renew ?cert_metadata ?exclude_cn_from_sans ?format ?id ?ip_sans
           ?issuer_ref ?min_seconds_remaining ?namespace ?not_after ?other_sans ?private_key_format ?revoke
           ?revoke_with_key ?ttl ?uri_sans ?user_ids ~backend ~common_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?alt_names ?auto_renew ?cert_metadata ?exclude_cn_from_sans ?format ?id ?ip_sans ?issuer_ref
  ?min_seconds_remaining ?namespace ?not_after ?other_sans ?private_key_format ?revoke ?revoke_with_key ?ttl ?uri_sans
  ?user_ids ~backend ~common_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?alt_names ?auto_renew ?cert_metadata ?exclude_cn_from_sans ?format ?id ?ip_sans ?issuer_ref
      ?min_seconds_remaining ?namespace ?not_after ?other_sans ?private_key_format ?revoke ?revoke_with_key ?ttl
      ?uri_sans ?user_ids ~backend ~common_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

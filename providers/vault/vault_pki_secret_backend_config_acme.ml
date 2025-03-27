(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_config_acme = {
  allow_role_ext_key_usage : bool prop option; [@option]
  allowed_issuers : string prop list option; [@option]
  allowed_roles : string prop list option; [@option]
  backend : string prop;
  default_directory_policy : string prop option; [@option]
  dns_resolver : string prop option; [@option]
  eab_policy : string prop option; [@option]
  enabled : bool prop;
  id : string prop option; [@option]
  max_ttl : float prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_config_acme) -> ()

let yojson_of_vault_pki_secret_backend_config_acme =
  (function
   | {
       allow_role_ext_key_usage = v_allow_role_ext_key_usage;
       allowed_issuers = v_allowed_issuers;
       allowed_roles = v_allowed_roles;
       backend = v_backend;
       default_directory_policy = v_default_directory_policy;
       dns_resolver = v_dns_resolver;
       eab_policy = v_eab_policy;
       enabled = v_enabled;
       id = v_id;
       max_ttl = v_max_ttl;
       namespace = v_namespace;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_bool v_enabled in
       ("enabled", arg) :: bnds
     in
     let bnds =
       match v_eab_policy with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "eab_policy", arg in
         bnd :: bnds
     in
     let bnds =
       match v_dns_resolver with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "dns_resolver", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_directory_policy with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "default_directory_policy", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_issuers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_issuers", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_role_ext_key_usage with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_role_ext_key_usage", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_config_acme -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_config_acme

[@@@deriving.end]

let vault_pki_secret_backend_config_acme ?allow_role_ext_key_usage ?allowed_issuers ?allowed_roles
  ?default_directory_policy ?dns_resolver ?eab_policy ?id ?max_ttl ?namespace ~backend ~enabled () =
  ({
     allow_role_ext_key_usage;
     allowed_issuers;
     allowed_roles;
     backend;
     default_directory_policy;
     dns_resolver;
     eab_policy;
     enabled;
     id;
     max_ttl;
     namespace;
   }
    : vault_pki_secret_backend_config_acme)

type t = {
  tf_name : string;
  allow_role_ext_key_usage : bool prop;
  allowed_issuers : string list prop;
  allowed_roles : string list prop;
  backend : string prop;
  default_directory_policy : string prop;
  dns_resolver : string prop;
  eab_policy : string prop;
  enabled : bool prop;
  id : string prop;
  max_ttl : float prop;
  namespace : string prop;
}

let make ?allow_role_ext_key_usage ?allowed_issuers ?allowed_roles ?default_directory_policy ?dns_resolver ?eab_policy
  ?id ?max_ttl ?namespace ~backend ~enabled __id =
  let __type = "vault_pki_secret_backend_config_acme" in
  let __attrs =
    ({
       tf_name = __id;
       allow_role_ext_key_usage = Prop.computed __type __id "allow_role_ext_key_usage";
       allowed_issuers = Prop.computed __type __id "allowed_issuers";
       allowed_roles = Prop.computed __type __id "allowed_roles";
       backend = Prop.computed __type __id "backend";
       default_directory_policy = Prop.computed __type __id "default_directory_policy";
       dns_resolver = Prop.computed __type __id "dns_resolver";
       eab_policy = Prop.computed __type __id "eab_policy";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       max_ttl = Prop.computed __type __id "max_ttl";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_config_acme
        (vault_pki_secret_backend_config_acme ?allow_role_ext_key_usage ?allowed_issuers ?allowed_roles
           ?default_directory_policy ?dns_resolver ?eab_policy ?id ?max_ttl ?namespace ~backend ~enabled ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_role_ext_key_usage ?allowed_issuers ?allowed_roles ?default_directory_policy
  ?dns_resolver ?eab_policy ?id ?max_ttl ?namespace ~backend ~enabled __id =
  let (r : _ Tf_core.resource) =
    make ?allow_role_ext_key_usage ?allowed_issuers ?allowed_roles ?default_directory_policy ?dns_resolver ?eab_policy
      ?id ?max_ttl ?namespace ~backend ~enabled __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

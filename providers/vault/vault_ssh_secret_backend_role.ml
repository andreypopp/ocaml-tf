(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type allowed_user_key_config = {
  lengths : float prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : allowed_user_key_config) -> ()

let yojson_of_allowed_user_key_config =
  (function
   | { lengths = v_lengths; type_ = v_type_ } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_type_ in
       ("type", arg) :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_lengths then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_float)) v_lengths in
         let bnd = "lengths", arg in
         bnd :: bnds)
     in
     `Assoc bnds
    : allowed_user_key_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_allowed_user_key_config

[@@@deriving.end]

type vault_ssh_secret_backend_role = {
  algorithm_signer : string prop option; [@option]
  allow_bare_domains : bool prop option; [@option]
  allow_empty_principals : bool prop option; [@option]
  allow_host_certificates : bool prop option; [@option]
  allow_subdomains : bool prop option; [@option]
  allow_user_certificates : bool prop option; [@option]
  allow_user_key_ids : bool prop option; [@option]
  allowed_critical_options : string prop option; [@option]
  allowed_domains : string prop option; [@option]
  allowed_domains_template : bool prop option; [@option]
  allowed_extensions : string prop option; [@option]
  allowed_users : string prop option; [@option]
  allowed_users_template : bool prop option; [@option]
  backend : string prop;
  cidr_list : string prop option; [@option]
  default_critical_options : string prop Tf_core.assoc option; [@option]
  default_extensions : string prop Tf_core.assoc option; [@option]
  default_user : string prop option; [@option]
  default_user_template : bool prop option; [@option]
  id : string prop option; [@option]
  key_id_format : string prop option; [@option]
  key_type : string prop;
  max_ttl : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  not_before_duration : string prop option; [@option]
  ttl : string prop option; [@option]
  allowed_user_key_config : allowed_user_key_config list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ssh_secret_backend_role) -> ()

let yojson_of_vault_ssh_secret_backend_role =
  (function
   | {
       algorithm_signer = v_algorithm_signer;
       allow_bare_domains = v_allow_bare_domains;
       allow_empty_principals = v_allow_empty_principals;
       allow_host_certificates = v_allow_host_certificates;
       allow_subdomains = v_allow_subdomains;
       allow_user_certificates = v_allow_user_certificates;
       allow_user_key_ids = v_allow_user_key_ids;
       allowed_critical_options = v_allowed_critical_options;
       allowed_domains = v_allowed_domains;
       allowed_domains_template = v_allowed_domains_template;
       allowed_extensions = v_allowed_extensions;
       allowed_users = v_allowed_users;
       allowed_users_template = v_allowed_users_template;
       backend = v_backend;
       cidr_list = v_cidr_list;
       default_critical_options = v_default_critical_options;
       default_extensions = v_default_extensions;
       default_user = v_default_user;
       default_user_template = v_default_user_template;
       id = v_id;
       key_id_format = v_key_id_format;
       key_type = v_key_type;
       max_ttl = v_max_ttl;
       name = v_name;
       namespace = v_namespace;
       not_before_duration = v_not_before_duration;
       ttl = v_ttl;
       allowed_user_key_config = v_allowed_user_key_config;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_allowed_user_key_config then bnds
       else (
         let arg = (yojson_of_list yojson_of_allowed_user_key_config) v_allowed_user_key_config in
         let bnd = "allowed_user_key_config", arg in
         bnd :: bnds)
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
       match v_not_before_duration with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "not_before_duration", arg in
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
       let arg = yojson_of_prop yojson_of_string v_key_type in
       ("key_type", arg) :: bnds
     in
     let bnds =
       match v_key_id_format with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_id_format", arg in
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
       match v_default_user_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "default_user_template", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_user with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "default_user", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_extensions with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "default_extensions", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_critical_options with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "default_critical_options", arg in
         bnd :: bnds
     in
     let bnds =
       match v_cidr_list with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "cidr_list", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     let bnds =
       match v_allowed_users_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allowed_users_template", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_users with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "allowed_users", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_extensions with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "allowed_extensions", arg in
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
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "allowed_domains", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_critical_options with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "allowed_critical_options", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_user_key_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_user_key_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_user_certificates with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_user_certificates", arg in
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
       match v_allow_host_certificates with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_host_certificates", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_empty_principals with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_empty_principals", arg in
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
       match v_algorithm_signer with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "algorithm_signer", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_ssh_secret_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ssh_secret_backend_role

[@@@deriving.end]

let allowed_user_key_config ~lengths ~type_ () = ({ lengths; type_ } : allowed_user_key_config)

let vault_ssh_secret_backend_role ?algorithm_signer ?allow_bare_domains ?allow_empty_principals ?allow_host_certificates
  ?allow_subdomains ?allow_user_certificates ?allow_user_key_ids ?allowed_critical_options ?allowed_domains
  ?allowed_domains_template ?allowed_extensions ?allowed_users ?allowed_users_template ?cidr_list
  ?default_critical_options ?default_extensions ?default_user ?default_user_template ?id ?key_id_format ?max_ttl
  ?namespace ?not_before_duration ?ttl ~backend ~key_type ~name ~allowed_user_key_config () =
  ({
     algorithm_signer;
     allow_bare_domains;
     allow_empty_principals;
     allow_host_certificates;
     allow_subdomains;
     allow_user_certificates;
     allow_user_key_ids;
     allowed_critical_options;
     allowed_domains;
     allowed_domains_template;
     allowed_extensions;
     allowed_users;
     allowed_users_template;
     backend;
     cidr_list;
     default_critical_options;
     default_extensions;
     default_user;
     default_user_template;
     id;
     key_id_format;
     key_type;
     max_ttl;
     name;
     namespace;
     not_before_duration;
     ttl;
     allowed_user_key_config;
   }
    : vault_ssh_secret_backend_role)

type t = {
  tf_name : string;
  algorithm_signer : string prop;
  allow_bare_domains : bool prop;
  allow_empty_principals : bool prop;
  allow_host_certificates : bool prop;
  allow_subdomains : bool prop;
  allow_user_certificates : bool prop;
  allow_user_key_ids : bool prop;
  allowed_critical_options : string prop;
  allowed_domains : string prop;
  allowed_domains_template : bool prop;
  allowed_extensions : string prop;
  allowed_users : string prop;
  allowed_users_template : bool prop;
  backend : string prop;
  cidr_list : string prop;
  default_critical_options : string Tf_core.assoc prop;
  default_extensions : string Tf_core.assoc prop;
  default_user : string prop;
  default_user_template : bool prop;
  id : string prop;
  key_id_format : string prop;
  key_type : string prop;
  max_ttl : string prop;
  name : string prop;
  namespace : string prop;
  not_before_duration : string prop;
  ttl : string prop;
}

let make ?algorithm_signer ?allow_bare_domains ?allow_empty_principals ?allow_host_certificates ?allow_subdomains
  ?allow_user_certificates ?allow_user_key_ids ?allowed_critical_options ?allowed_domains ?allowed_domains_template
  ?allowed_extensions ?allowed_users ?allowed_users_template ?cidr_list ?default_critical_options ?default_extensions
  ?default_user ?default_user_template ?id ?key_id_format ?max_ttl ?namespace ?not_before_duration ?ttl ~backend
  ~key_type ~name ~allowed_user_key_config __id =
  let __type = "vault_ssh_secret_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       algorithm_signer = Prop.computed __type __id "algorithm_signer";
       allow_bare_domains = Prop.computed __type __id "allow_bare_domains";
       allow_empty_principals = Prop.computed __type __id "allow_empty_principals";
       allow_host_certificates = Prop.computed __type __id "allow_host_certificates";
       allow_subdomains = Prop.computed __type __id "allow_subdomains";
       allow_user_certificates = Prop.computed __type __id "allow_user_certificates";
       allow_user_key_ids = Prop.computed __type __id "allow_user_key_ids";
       allowed_critical_options = Prop.computed __type __id "allowed_critical_options";
       allowed_domains = Prop.computed __type __id "allowed_domains";
       allowed_domains_template = Prop.computed __type __id "allowed_domains_template";
       allowed_extensions = Prop.computed __type __id "allowed_extensions";
       allowed_users = Prop.computed __type __id "allowed_users";
       allowed_users_template = Prop.computed __type __id "allowed_users_template";
       backend = Prop.computed __type __id "backend";
       cidr_list = Prop.computed __type __id "cidr_list";
       default_critical_options = Prop.computed __type __id "default_critical_options";
       default_extensions = Prop.computed __type __id "default_extensions";
       default_user = Prop.computed __type __id "default_user";
       default_user_template = Prop.computed __type __id "default_user_template";
       id = Prop.computed __type __id "id";
       key_id_format = Prop.computed __type __id "key_id_format";
       key_type = Prop.computed __type __id "key_type";
       max_ttl = Prop.computed __type __id "max_ttl";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       not_before_duration = Prop.computed __type __id "not_before_duration";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_ssh_secret_backend_role
        (vault_ssh_secret_backend_role ?algorithm_signer ?allow_bare_domains ?allow_empty_principals
           ?allow_host_certificates ?allow_subdomains ?allow_user_certificates ?allow_user_key_ids
           ?allowed_critical_options ?allowed_domains ?allowed_domains_template ?allowed_extensions ?allowed_users
           ?allowed_users_template ?cidr_list ?default_critical_options ?default_extensions ?default_user
           ?default_user_template ?id ?key_id_format ?max_ttl ?namespace ?not_before_duration ?ttl ~backend ~key_type
           ~name ~allowed_user_key_config ());
    attrs = __attrs;
  }

let register ?tf_module ?algorithm_signer ?allow_bare_domains ?allow_empty_principals ?allow_host_certificates
  ?allow_subdomains ?allow_user_certificates ?allow_user_key_ids ?allowed_critical_options ?allowed_domains
  ?allowed_domains_template ?allowed_extensions ?allowed_users ?allowed_users_template ?cidr_list
  ?default_critical_options ?default_extensions ?default_user ?default_user_template ?id ?key_id_format ?max_ttl
  ?namespace ?not_before_duration ?ttl ~backend ~key_type ~name ~allowed_user_key_config __id =
  let (r : _ Tf_core.resource) =
    make ?algorithm_signer ?allow_bare_domains ?allow_empty_principals ?allow_host_certificates ?allow_subdomains
      ?allow_user_certificates ?allow_user_key_ids ?allowed_critical_options ?allowed_domains ?allowed_domains_template
      ?allowed_extensions ?allowed_users ?allowed_users_template ?cidr_list ?default_critical_options
      ?default_extensions ?default_user ?default_user_template ?id ?key_id_format ?max_ttl ?namespace
      ?not_before_duration ?ttl ~backend ~key_type ~name ~allowed_user_key_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

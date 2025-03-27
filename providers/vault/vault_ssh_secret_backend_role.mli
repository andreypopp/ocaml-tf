(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type allowed_user_key_config

val allowed_user_key_config : lengths:float prop list -> type_:string prop -> unit -> allowed_user_key_config

type vault_ssh_secret_backend_role

val vault_ssh_secret_backend_role :
  ?algorithm_signer:string prop ->
  ?allow_bare_domains:bool prop ->
  ?allow_empty_principals:bool prop ->
  ?allow_host_certificates:bool prop ->
  ?allow_subdomains:bool prop ->
  ?allow_user_certificates:bool prop ->
  ?allow_user_key_ids:bool prop ->
  ?allowed_critical_options:string prop ->
  ?allowed_domains:string prop ->
  ?allowed_domains_template:bool prop ->
  ?allowed_extensions:string prop ->
  ?allowed_users:string prop ->
  ?allowed_users_template:bool prop ->
  ?cidr_list:string prop ->
  ?default_critical_options:string prop Tf_core.assoc ->
  ?default_extensions:string prop Tf_core.assoc ->
  ?default_user:string prop ->
  ?default_user_template:bool prop ->
  ?id:string prop ->
  ?key_id_format:string prop ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?not_before_duration:string prop ->
  ?ttl:string prop ->
  backend:string prop ->
  key_type:string prop ->
  name:string prop ->
  allowed_user_key_config:allowed_user_key_config list ->
  unit ->
  vault_ssh_secret_backend_role

val yojson_of_vault_ssh_secret_backend_role : vault_ssh_secret_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?algorithm_signer:string prop ->
  ?allow_bare_domains:bool prop ->
  ?allow_empty_principals:bool prop ->
  ?allow_host_certificates:bool prop ->
  ?allow_subdomains:bool prop ->
  ?allow_user_certificates:bool prop ->
  ?allow_user_key_ids:bool prop ->
  ?allowed_critical_options:string prop ->
  ?allowed_domains:string prop ->
  ?allowed_domains_template:bool prop ->
  ?allowed_extensions:string prop ->
  ?allowed_users:string prop ->
  ?allowed_users_template:bool prop ->
  ?cidr_list:string prop ->
  ?default_critical_options:string prop Tf_core.assoc ->
  ?default_extensions:string prop Tf_core.assoc ->
  ?default_user:string prop ->
  ?default_user_template:bool prop ->
  ?id:string prop ->
  ?key_id_format:string prop ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?not_before_duration:string prop ->
  ?ttl:string prop ->
  backend:string prop ->
  key_type:string prop ->
  name:string prop ->
  allowed_user_key_config:allowed_user_key_config list ->
  string ->
  t

val make :
  ?algorithm_signer:string prop ->
  ?allow_bare_domains:bool prop ->
  ?allow_empty_principals:bool prop ->
  ?allow_host_certificates:bool prop ->
  ?allow_subdomains:bool prop ->
  ?allow_user_certificates:bool prop ->
  ?allow_user_key_ids:bool prop ->
  ?allowed_critical_options:string prop ->
  ?allowed_domains:string prop ->
  ?allowed_domains_template:bool prop ->
  ?allowed_extensions:string prop ->
  ?allowed_users:string prop ->
  ?allowed_users_template:bool prop ->
  ?cidr_list:string prop ->
  ?default_critical_options:string prop Tf_core.assoc ->
  ?default_extensions:string prop Tf_core.assoc ->
  ?default_user:string prop ->
  ?default_user_template:bool prop ->
  ?id:string prop ->
  ?key_id_format:string prop ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?not_before_duration:string prop ->
  ?ttl:string prop ->
  backend:string prop ->
  key_type:string prop ->
  name:string prop ->
  allowed_user_key_config:allowed_user_key_config list ->
  string ->
  t Tf_core.resource

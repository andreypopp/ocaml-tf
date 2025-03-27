(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** PROVIDER SERIALIZATION *)

type auth_login

val auth_login :
  ?method_:string prop ->
  ?namespace:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?use_root_namespace:bool prop ->
  path:string prop ->
  unit ->
  auth_login

type auth_login_aws

val auth_login_aws :
  ?aws_access_key_id:string prop ->
  ?aws_iam_endpoint:string prop ->
  ?aws_profile:string prop ->
  ?aws_region:string prop ->
  ?aws_role_arn:string prop ->
  ?aws_role_session_name:string prop ->
  ?aws_secret_access_key:string prop ->
  ?aws_session_token:string prop ->
  ?aws_shared_credentials_file:string prop ->
  ?aws_sts_endpoint:string prop ->
  ?aws_web_identity_token_file:string prop ->
  ?header_value:string prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?use_root_namespace:bool prop ->
  role:string prop ->
  unit ->
  auth_login_aws

type auth_login_azure

val auth_login_azure :
  ?client_id:string prop ->
  ?jwt:string prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?scope:string prop ->
  ?tenant_id:string prop ->
  ?use_root_namespace:bool prop ->
  ?vm_name:string prop ->
  ?vmss_name:string prop ->
  resource_group_name:string prop ->
  role:string prop ->
  subscription_id:string prop ->
  unit ->
  auth_login_azure

type auth_login_cert

val auth_login_cert :
  ?mount:string prop ->
  ?name:string prop ->
  ?namespace:string prop ->
  ?use_root_namespace:bool prop ->
  cert_file:string prop ->
  key_file:string prop ->
  unit ->
  auth_login_cert

type auth_login_gcp

val auth_login_gcp :
  ?credentials:string prop ->
  ?jwt:string prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?service_account:string prop ->
  ?use_root_namespace:bool prop ->
  role:string prop ->
  unit ->
  auth_login_gcp

type auth_login_jwt

val auth_login_jwt :
  ?mount:string prop ->
  ?namespace:string prop ->
  ?use_root_namespace:bool prop ->
  jwt:string prop ->
  role:string prop ->
  unit ->
  auth_login_jwt

type auth_login_kerberos

val auth_login_kerberos :
  ?disable_fast_negotiation:bool prop ->
  ?keytab_path:string prop ->
  ?krb5conf_path:string prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?realm:string prop ->
  ?remove_instance_name:bool prop ->
  ?service:string prop ->
  ?token:string prop ->
  ?use_root_namespace:bool prop ->
  ?username:string prop ->
  unit ->
  auth_login_kerberos

type auth_login_oci

val auth_login_oci :
  ?mount:string prop ->
  ?namespace:string prop ->
  ?use_root_namespace:bool prop ->
  auth_type:string prop ->
  role:string prop ->
  unit ->
  auth_login_oci

type auth_login_oidc

val auth_login_oidc :
  ?callback_address:string prop ->
  ?callback_listener_address:string prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?use_root_namespace:bool prop ->
  role:string prop ->
  unit ->
  auth_login_oidc

type auth_login_radius

val auth_login_radius :
  ?mount:string prop ->
  ?namespace:string prop ->
  ?use_root_namespace:bool prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  auth_login_radius

type auth_login_token_file

val auth_login_token_file :
  ?namespace:string prop -> ?use_root_namespace:bool prop -> filename:string prop -> unit -> auth_login_token_file

type auth_login_userpass

val auth_login_userpass :
  ?mount:string prop ->
  ?namespace:string prop ->
  ?password:string prop ->
  ?password_file:string prop ->
  ?use_root_namespace:bool prop ->
  username:string prop ->
  unit ->
  auth_login_userpass

type client_auth

val client_auth : ?cert_file:string prop -> ?key_file:string prop -> unit -> client_auth

type headers

val headers : name:string prop -> value:string prop -> unit -> headers

type vault

val vault :
  ?add_address_to_env:string prop ->
  ?ca_cert_dir:string prop ->
  ?ca_cert_file:string prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?max_retries:float prop ->
  ?max_retries_ccc:float prop ->
  ?namespace:string prop ->
  ?set_namespace_from_token:bool prop ->
  ?skip_child_token:bool prop ->
  ?skip_get_vault_version:bool prop ->
  ?skip_tls_verify:bool prop ->
  ?tls_server_name:string prop ->
  ?token:string prop ->
  ?token_name:string prop ->
  ?vault_version_override:string prop ->
  ?auth_login:auth_login list ->
  ?auth_login_aws:auth_login_aws list ->
  ?auth_login_azure:auth_login_azure list ->
  ?auth_login_cert:auth_login_cert list ->
  ?auth_login_gcp:auth_login_gcp list ->
  ?auth_login_jwt:auth_login_jwt list ->
  ?auth_login_kerberos:auth_login_kerberos list ->
  ?auth_login_oci:auth_login_oci list ->
  ?auth_login_oidc:auth_login_oidc list ->
  ?auth_login_radius:auth_login_radius list ->
  ?auth_login_token_file:auth_login_token_file list ->
  ?auth_login_userpass:auth_login_userpass list ->
  ?client_auth:client_auth list ->
  ?headers:headers list ->
  address:string prop ->
  unit ->
  vault

val yojson_of_vault : vault -> json

(** PROVIDER REGISTRATION *)

val register :
  ?tf_module:tf_module ->
  ?add_address_to_env:string prop ->
  ?ca_cert_dir:string prop ->
  ?ca_cert_file:string prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?max_retries:float prop ->
  ?max_retries_ccc:float prop ->
  ?namespace:string prop ->
  ?set_namespace_from_token:bool prop ->
  ?skip_child_token:bool prop ->
  ?skip_get_vault_version:bool prop ->
  ?skip_tls_verify:bool prop ->
  ?tls_server_name:string prop ->
  ?token:string prop ->
  ?token_name:string prop ->
  ?vault_version_override:string prop ->
  ?auth_login:auth_login list ->
  ?auth_login_aws:auth_login_aws list ->
  ?auth_login_azure:auth_login_azure list ->
  ?auth_login_cert:auth_login_cert list ->
  ?auth_login_gcp:auth_login_gcp list ->
  ?auth_login_jwt:auth_login_jwt list ->
  ?auth_login_kerberos:auth_login_kerberos list ->
  ?auth_login_oci:auth_login_oci list ->
  ?auth_login_oidc:auth_login_oidc list ->
  ?auth_login_radius:auth_login_radius list ->
  ?auth_login_token_file:auth_login_token_file list ->
  ?auth_login_userpass:auth_login_userpass list ->
  ?client_auth:client_auth list ->
  ?headers:headers list ->
  address:string prop ->
  version:string ->
  unit ->
  unit

val make :
  ?add_address_to_env:string prop ->
  ?ca_cert_dir:string prop ->
  ?ca_cert_file:string prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?max_retries:float prop ->
  ?max_retries_ccc:float prop ->
  ?namespace:string prop ->
  ?set_namespace_from_token:bool prop ->
  ?skip_child_token:bool prop ->
  ?skip_get_vault_version:bool prop ->
  ?skip_tls_verify:bool prop ->
  ?tls_server_name:string prop ->
  ?token:string prop ->
  ?token_name:string prop ->
  ?vault_version_override:string prop ->
  ?auth_login:auth_login list ->
  ?auth_login_aws:auth_login_aws list ->
  ?auth_login_azure:auth_login_azure list ->
  ?auth_login_cert:auth_login_cert list ->
  ?auth_login_gcp:auth_login_gcp list ->
  ?auth_login_jwt:auth_login_jwt list ->
  ?auth_login_kerberos:auth_login_kerberos list ->
  ?auth_login_oci:auth_login_oci list ->
  ?auth_login_oidc:auth_login_oidc list ->
  ?auth_login_radius:auth_login_radius list ->
  ?auth_login_token_file:auth_login_token_file list ->
  ?auth_login_userpass:auth_login_userpass list ->
  ?client_auth:client_auth list ->
  ?headers:headers list ->
  address:string prop ->
  unit ->
  Tf_core.provider

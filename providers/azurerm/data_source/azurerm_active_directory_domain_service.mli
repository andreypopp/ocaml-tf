(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_recipients *)
  notify_dc_admins : bool prop;  (** notify_dc_admins *)
  notify_global_admins : bool prop;  (** notify_global_admins *)
}

type replica_sets = {
  domain_controller_ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** domain_controller_ip_addresses *)
  external_access_ip_address : string prop;
      (** external_access_ip_address *)
  id : string prop;  (** id *)
  location : string prop;  (** location *)
  service_status : string prop;  (** service_status *)
  subnet_id : string prop;  (** subnet_id *)
}

type secure_ldap = {
  certificate_expiry : string prop;  (** certificate_expiry *)
  certificate_thumbprint : string prop;
      (** certificate_thumbprint *)
  enabled : bool prop;  (** enabled *)
  external_access_enabled : bool prop;
      (** external_access_enabled *)
  public_certificate : string prop;  (** public_certificate *)
}

type security = {
  kerberos_armoring_enabled : bool prop;
      (** kerberos_armoring_enabled *)
  kerberos_rc4_encryption_enabled : bool prop;
      (** kerberos_rc4_encryption_enabled *)
  ntlm_v1_enabled : bool prop;  (** ntlm_v1_enabled *)
  sync_kerberos_passwords : bool prop;
      (** sync_kerberos_passwords *)
  sync_ntlm_passwords : bool prop;  (** sync_ntlm_passwords *)
  sync_on_prem_passwords : bool prop;  (** sync_on_prem_passwords *)
  tls_v1_enabled : bool prop;  (** tls_v1_enabled *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_active_directory_domain_service

val azurerm_active_directory_domain_service :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_active_directory_domain_service

val yojson_of_azurerm_active_directory_domain_service :
  azurerm_active_directory_domain_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  deployment_id : string prop;
  domain_configuration_type : string prop;
  domain_name : string prop;
  filtered_sync_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  notifications : notifications list prop;
  replica_sets : replica_sets list prop;
  resource_group_name : string prop;
  resource_id : string prop;
  secure_ldap : secure_ldap list prop;
  security : security list prop;
  sku : string prop;
  sync_owner : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource

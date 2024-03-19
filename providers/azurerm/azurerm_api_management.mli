(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type policy = {
  xml_content : string prop;  (** xml_content *)
  xml_link : string prop;  (** xml_link *)
}

type additional_location__virtual_network_configuration

val additional_location__virtual_network_configuration :
  subnet_id:string prop ->
  unit ->
  additional_location__virtual_network_configuration

type additional_location

val additional_location :
  ?capacity:float prop ->
  ?gateway_disabled:bool prop ->
  ?public_ip_address_id:string prop ->
  ?zones:string prop list ->
  location:string prop ->
  virtual_network_configuration:
    additional_location__virtual_network_configuration list ->
  unit ->
  additional_location

type certificate

val certificate :
  ?certificate_password:string prop ->
  encoded_certificate:string prop ->
  store_name:string prop ->
  unit ->
  certificate

type delegation

val delegation :
  ?subscriptions_enabled:bool prop ->
  ?url:string prop ->
  ?user_registration_enabled:bool prop ->
  ?validation_key:string prop ->
  unit ->
  delegation

type hostname_configuration__developer_portal

val hostname_configuration__developer_portal :
  ?certificate:string prop ->
  ?certificate_password:string prop ->
  ?key_vault_id:string prop ->
  ?negotiate_client_certificate:bool prop ->
  ?ssl_keyvault_identity_client_id:string prop ->
  host_name:string prop ->
  unit ->
  hostname_configuration__developer_portal

type hostname_configuration__management

val hostname_configuration__management :
  ?certificate:string prop ->
  ?certificate_password:string prop ->
  ?key_vault_id:string prop ->
  ?negotiate_client_certificate:bool prop ->
  ?ssl_keyvault_identity_client_id:string prop ->
  host_name:string prop ->
  unit ->
  hostname_configuration__management

type hostname_configuration__portal

val hostname_configuration__portal :
  ?certificate:string prop ->
  ?certificate_password:string prop ->
  ?key_vault_id:string prop ->
  ?negotiate_client_certificate:bool prop ->
  ?ssl_keyvault_identity_client_id:string prop ->
  host_name:string prop ->
  unit ->
  hostname_configuration__portal

type hostname_configuration__proxy

val hostname_configuration__proxy :
  ?certificate:string prop ->
  ?certificate_password:string prop ->
  ?default_ssl_binding:bool prop ->
  ?key_vault_id:string prop ->
  ?negotiate_client_certificate:bool prop ->
  ?ssl_keyvault_identity_client_id:string prop ->
  host_name:string prop ->
  unit ->
  hostname_configuration__proxy

type hostname_configuration__scm

val hostname_configuration__scm :
  ?certificate:string prop ->
  ?certificate_password:string prop ->
  ?key_vault_id:string prop ->
  ?negotiate_client_certificate:bool prop ->
  ?ssl_keyvault_identity_client_id:string prop ->
  host_name:string prop ->
  unit ->
  hostname_configuration__scm

type hostname_configuration

val hostname_configuration :
  developer_portal:hostname_configuration__developer_portal list ->
  management:hostname_configuration__management list ->
  portal:hostname_configuration__portal list ->
  proxy:hostname_configuration__proxy list ->
  scm:hostname_configuration__scm list ->
  unit ->
  hostname_configuration

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type protocols

val protocols : ?enable_http2:bool prop -> unit -> protocols

type security

val security :
  ?enable_backend_ssl30:bool prop ->
  ?enable_backend_tls10:bool prop ->
  ?enable_backend_tls11:bool prop ->
  ?enable_frontend_ssl30:bool prop ->
  ?enable_frontend_tls10:bool prop ->
  ?enable_frontend_tls11:bool prop ->
  ?tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled:bool prop ->
  ?tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled:bool prop ->
  ?tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled:bool prop ->
  ?tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled:bool prop ->
  ?tls_rsa_with_aes128_cbc_sha256_ciphers_enabled:bool prop ->
  ?tls_rsa_with_aes128_cbc_sha_ciphers_enabled:bool prop ->
  ?tls_rsa_with_aes128_gcm_sha256_ciphers_enabled:bool prop ->
  ?tls_rsa_with_aes256_cbc_sha256_ciphers_enabled:bool prop ->
  ?tls_rsa_with_aes256_cbc_sha_ciphers_enabled:bool prop ->
  ?tls_rsa_with_aes256_gcm_sha384_ciphers_enabled:bool prop ->
  ?triple_des_ciphers_enabled:bool prop ->
  unit ->
  security

type sign_in

val sign_in : enabled:bool prop -> unit -> sign_in

type sign_up__terms_of_service

val sign_up__terms_of_service :
  ?text:string prop ->
  consent_required:bool prop ->
  enabled:bool prop ->
  unit ->
  sign_up__terms_of_service

type sign_up

val sign_up :
  enabled:bool prop ->
  terms_of_service:sign_up__terms_of_service list ->
  unit ->
  sign_up

type tenant_access

val tenant_access : enabled:bool prop -> unit -> tenant_access

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type virtual_network_configuration

val virtual_network_configuration :
  subnet_id:string prop -> unit -> virtual_network_configuration

type azurerm_api_management

val azurerm_api_management :
  ?client_certificate_enabled:bool prop ->
  ?gateway_disabled:bool prop ->
  ?id:string prop ->
  ?min_api_version:string prop ->
  ?notification_sender_email:string prop ->
  ?policy:policy list ->
  ?public_ip_address_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?virtual_network_type:string prop ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  publisher_email:string prop ->
  publisher_name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  additional_location:additional_location list ->
  certificate:certificate list ->
  delegation:delegation list ->
  hostname_configuration:hostname_configuration list ->
  identity:identity list ->
  protocols:protocols list ->
  security:security list ->
  sign_in:sign_in list ->
  sign_up:sign_up list ->
  tenant_access:tenant_access list ->
  virtual_network_configuration:virtual_network_configuration list ->
  unit ->
  azurerm_api_management

val yojson_of_azurerm_api_management : azurerm_api_management -> json

(** RESOURCE REGISTRATION *)

type t = private {
  client_certificate_enabled : bool prop;
  developer_portal_url : string prop;
  gateway_disabled : bool prop;
  gateway_regional_url : string prop;
  gateway_url : string prop;
  id : string prop;
  location : string prop;
  management_api_url : string prop;
  min_api_version : string prop;
  name : string prop;
  notification_sender_email : string prop;
  policy : policy list prop;
  portal_url : string prop;
  private_ip_addresses : string list prop;
  public_ip_address_id : string prop;
  public_ip_addresses : string list prop;
  public_network_access_enabled : bool prop;
  publisher_email : string prop;
  publisher_name : string prop;
  resource_group_name : string prop;
  scm_url : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  virtual_network_type : string prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_certificate_enabled:bool prop ->
  ?gateway_disabled:bool prop ->
  ?id:string prop ->
  ?min_api_version:string prop ->
  ?notification_sender_email:string prop ->
  ?policy:policy list ->
  ?public_ip_address_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?virtual_network_type:string prop ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  publisher_email:string prop ->
  publisher_name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  additional_location:additional_location list ->
  certificate:certificate list ->
  delegation:delegation list ->
  hostname_configuration:hostname_configuration list ->
  identity:identity list ->
  protocols:protocols list ->
  security:security list ->
  sign_in:sign_in list ->
  sign_up:sign_up list ->
  tenant_access:tenant_access list ->
  virtual_network_configuration:virtual_network_configuration list ->
  string ->
  t

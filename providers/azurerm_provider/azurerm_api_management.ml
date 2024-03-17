(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management__additional_location__virtual_network_configuration = {
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_api_management__additional_location__virtual_network_configuration *)

type azurerm_api_management__additional_location = {
  capacity : float option; [@option]  (** capacity *)
  gateway_disabled : bool option; [@option]  (** gateway_disabled *)
  gateway_regional_url : string;  (** gateway_regional_url *)
  location : string;  (** location *)
  private_ip_addresses : string list;  (** private_ip_addresses *)
  public_ip_address_id : string option; [@option]
      (** public_ip_address_id *)
  public_ip_addresses : string list;  (** public_ip_addresses *)
  zones : string list option; [@option]  (** zones *)
  virtual_network_configuration :
    azurerm_api_management__additional_location__virtual_network_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management__additional_location *)

type azurerm_api_management__certificate = {
  certificate_password : string option; [@option]
      (** certificate_password *)
  encoded_certificate : string;  (** encoded_certificate *)
  expiry : string;  (** expiry *)
  store_name : string;  (** store_name *)
  subject : string;  (** subject *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management__certificate *)

type azurerm_api_management__delegation = {
  subscriptions_enabled : bool option; [@option]
      (** subscriptions_enabled *)
  url : string option; [@option]  (** url *)
  user_registration_enabled : bool option; [@option]
      (** user_registration_enabled *)
  validation_key : string option; [@option]  (** validation_key *)
}
[@@deriving yojson_of]
(** azurerm_api_management__delegation *)

type azurerm_api_management__hostname_configuration__developer_portal = {
  certificate : string option; [@option]  (** certificate *)
  certificate_password : string option; [@option]
      (** certificate_password *)
  certificate_source : string;  (** certificate_source *)
  certificate_status : string;  (** certificate_status *)
  expiry : string;  (** expiry *)
  host_name : string;  (** host_name *)
  key_vault_id : string option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string;  (** subject *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management__hostname_configuration__developer_portal *)

type azurerm_api_management__hostname_configuration__management = {
  certificate : string option; [@option]  (** certificate *)
  certificate_password : string option; [@option]
      (** certificate_password *)
  certificate_source : string;  (** certificate_source *)
  certificate_status : string;  (** certificate_status *)
  expiry : string;  (** expiry *)
  host_name : string;  (** host_name *)
  key_vault_id : string option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string;  (** subject *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management__hostname_configuration__management *)

type azurerm_api_management__hostname_configuration__portal = {
  certificate : string option; [@option]  (** certificate *)
  certificate_password : string option; [@option]
      (** certificate_password *)
  certificate_source : string;  (** certificate_source *)
  certificate_status : string;  (** certificate_status *)
  expiry : string;  (** expiry *)
  host_name : string;  (** host_name *)
  key_vault_id : string option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string;  (** subject *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management__hostname_configuration__portal *)

type azurerm_api_management__hostname_configuration__proxy = {
  certificate : string option; [@option]  (** certificate *)
  certificate_password : string option; [@option]
      (** certificate_password *)
  certificate_source : string;  (** certificate_source *)
  certificate_status : string;  (** certificate_status *)
  default_ssl_binding : bool option; [@option]
      (** default_ssl_binding *)
  expiry : string;  (** expiry *)
  host_name : string;  (** host_name *)
  key_vault_id : string option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string;  (** subject *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management__hostname_configuration__proxy *)

type azurerm_api_management__hostname_configuration__scm = {
  certificate : string option; [@option]  (** certificate *)
  certificate_password : string option; [@option]
      (** certificate_password *)
  certificate_source : string;  (** certificate_source *)
  certificate_status : string;  (** certificate_status *)
  expiry : string;  (** expiry *)
  host_name : string;  (** host_name *)
  key_vault_id : string option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string;  (** subject *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management__hostname_configuration__scm *)

type azurerm_api_management__hostname_configuration = {
  developer_portal :
    azurerm_api_management__hostname_configuration__developer_portal
    list;
  management :
    azurerm_api_management__hostname_configuration__management list;
  portal :
    azurerm_api_management__hostname_configuration__portal list;
  proxy : azurerm_api_management__hostname_configuration__proxy list;
  scm : azurerm_api_management__hostname_configuration__scm list;
}
[@@deriving yojson_of]
(** azurerm_api_management__hostname_configuration *)

type azurerm_api_management__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_api_management__identity *)

type azurerm_api_management__protocols = {
  enable_http2 : bool option; [@option]  (** enable_http2 *)
}
[@@deriving yojson_of]
(** azurerm_api_management__protocols *)

type azurerm_api_management__security = {
  enable_backend_ssl30 : bool option; [@option]
      (** enable_backend_ssl30 *)
  enable_backend_tls10 : bool option; [@option]
      (** enable_backend_tls10 *)
  enable_backend_tls11 : bool option; [@option]
      (** enable_backend_tls11 *)
  enable_frontend_ssl30 : bool option; [@option]
      (** enable_frontend_ssl30 *)
  enable_frontend_tls10 : bool option; [@option]
      (** enable_frontend_tls10 *)
  enable_frontend_tls11 : bool option; [@option]
      (** enable_frontend_tls11 *)
  tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled : bool option;
      [@option]
      (** tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled *)
  tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled : bool option;
      [@option]
      (** tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled *)
  tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled : bool option;
      [@option]
      (** tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled *)
  tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled : bool option;
      [@option]
      (** tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled *)
  tls_rsa_with_aes128_cbc_sha256_ciphers_enabled : bool option;
      [@option]
      (** tls_rsa_with_aes128_cbc_sha256_ciphers_enabled *)
  tls_rsa_with_aes128_cbc_sha_ciphers_enabled : bool option;
      [@option]
      (** tls_rsa_with_aes128_cbc_sha_ciphers_enabled *)
  tls_rsa_with_aes128_gcm_sha256_ciphers_enabled : bool option;
      [@option]
      (** tls_rsa_with_aes128_gcm_sha256_ciphers_enabled *)
  tls_rsa_with_aes256_cbc_sha256_ciphers_enabled : bool option;
      [@option]
      (** tls_rsa_with_aes256_cbc_sha256_ciphers_enabled *)
  tls_rsa_with_aes256_cbc_sha_ciphers_enabled : bool option;
      [@option]
      (** tls_rsa_with_aes256_cbc_sha_ciphers_enabled *)
  tls_rsa_with_aes256_gcm_sha384_ciphers_enabled : bool option;
      [@option]
      (** tls_rsa_with_aes256_gcm_sha384_ciphers_enabled *)
  triple_des_ciphers_enabled : bool option; [@option]
      (** triple_des_ciphers_enabled *)
}
[@@deriving yojson_of]
(** azurerm_api_management__security *)

type azurerm_api_management__sign_in = {
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_api_management__sign_in *)

type azurerm_api_management__sign_up__terms_of_service = {
  consent_required : bool;  (** consent_required *)
  enabled : bool;  (** enabled *)
  text : string option; [@option]  (** text *)
}
[@@deriving yojson_of]
(** azurerm_api_management__sign_up__terms_of_service *)

type azurerm_api_management__sign_up = {
  enabled : bool;  (** enabled *)
  terms_of_service :
    azurerm_api_management__sign_up__terms_of_service list;
}
[@@deriving yojson_of]
(** azurerm_api_management__sign_up *)

type azurerm_api_management__tenant_access = {
  enabled : bool;  (** enabled *)
  primary_key : string;  (** primary_key *)
  secondary_key : string;  (** secondary_key *)
  tenant_id : string;  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_api_management__tenant_access *)

type azurerm_api_management__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management__timeouts *)

type azurerm_api_management__virtual_network_configuration = {
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_api_management__virtual_network_configuration *)

type azurerm_api_management__policy = {
  xml_content : string;  (** xml_content *)
  xml_link : string;  (** xml_link *)
}
[@@deriving yojson_of]

type azurerm_api_management = {
  client_certificate_enabled : bool option; [@option]
      (** client_certificate_enabled *)
  gateway_disabled : bool option; [@option]  (** gateway_disabled *)
  location : string;  (** location *)
  min_api_version : string option; [@option]  (** min_api_version *)
  name : string;  (** name *)
  public_ip_address_id : string option; [@option]
      (** public_ip_address_id *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  publisher_email : string;  (** publisher_email *)
  publisher_name : string;  (** publisher_name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_network_type : string option; [@option]
      (** virtual_network_type *)
  zones : string list option; [@option]  (** zones *)
  additional_location :
    azurerm_api_management__additional_location list;
  certificate : azurerm_api_management__certificate list;
  delegation : azurerm_api_management__delegation list;
  hostname_configuration :
    azurerm_api_management__hostname_configuration list;
  identity : azurerm_api_management__identity list;
  protocols : azurerm_api_management__protocols list;
  security : azurerm_api_management__security list;
  sign_in : azurerm_api_management__sign_in list;
  sign_up : azurerm_api_management__sign_up list;
  tenant_access : azurerm_api_management__tenant_access list;
  timeouts : azurerm_api_management__timeouts option;
  virtual_network_configuration :
    azurerm_api_management__virtual_network_configuration list;
}
[@@deriving yojson_of]
(** azurerm_api_management *)

let azurerm_api_management ?client_certificate_enabled
    ?gateway_disabled ?min_api_version ?public_ip_address_id
    ?public_network_access_enabled ?tags ?virtual_network_type ?zones
    ?timeouts ~location ~name ~publisher_email ~publisher_name
    ~resource_group_name ~sku_name ~additional_location ~certificate
    ~delegation ~hostname_configuration ~identity ~protocols
    ~security ~sign_in ~sign_up ~tenant_access
    ~virtual_network_configuration __resource_id =
  let __resource_type = "azurerm_api_management" in
  let __resource =
    {
      client_certificate_enabled;
      gateway_disabled;
      location;
      min_api_version;
      name;
      public_ip_address_id;
      public_network_access_enabled;
      publisher_email;
      publisher_name;
      resource_group_name;
      sku_name;
      tags;
      virtual_network_type;
      zones;
      additional_location;
      certificate;
      delegation;
      hostname_configuration;
      identity;
      protocols;
      security;
      sign_in;
      sign_up;
      tenant_access;
      timeouts;
      virtual_network_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management __resource);
  ()

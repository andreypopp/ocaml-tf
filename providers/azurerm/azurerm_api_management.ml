(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management__additional_location__virtual_network_configuration = {
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_api_management__additional_location__virtual_network_configuration *)

type azurerm_api_management__additional_location = {
  capacity : float prop option; [@option]  (** capacity *)
  gateway_disabled : bool prop option; [@option]
      (** gateway_disabled *)
  gateway_regional_url : string prop;  (** gateway_regional_url *)
  location : string prop;  (** location *)
  private_ip_addresses : string prop list;
      (** private_ip_addresses *)
  public_ip_address_id : string prop option; [@option]
      (** public_ip_address_id *)
  public_ip_addresses : string prop list;  (** public_ip_addresses *)
  zones : string prop list option; [@option]  (** zones *)
  virtual_network_configuration :
    azurerm_api_management__additional_location__virtual_network_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management__additional_location *)

type azurerm_api_management__certificate = {
  certificate_password : string prop option; [@option]
      (** certificate_password *)
  encoded_certificate : string prop;  (** encoded_certificate *)
  expiry : string prop;  (** expiry *)
  store_name : string prop;  (** store_name *)
  subject : string prop;  (** subject *)
  thumbprint : string prop;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management__certificate *)

type azurerm_api_management__delegation = {
  subscriptions_enabled : bool prop option; [@option]
      (** subscriptions_enabled *)
  url : string prop option; [@option]  (** url *)
  user_registration_enabled : bool prop option; [@option]
      (** user_registration_enabled *)
  validation_key : string prop option; [@option]
      (** validation_key *)
}
[@@deriving yojson_of]
(** azurerm_api_management__delegation *)

type azurerm_api_management__hostname_configuration__developer_portal = {
  certificate : string prop option; [@option]  (** certificate *)
  certificate_password : string prop option; [@option]
      (** certificate_password *)
  certificate_source : string prop;  (** certificate_source *)
  certificate_status : string prop;  (** certificate_status *)
  expiry : string prop;  (** expiry *)
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool prop option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string prop option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string prop;  (** subject *)
  thumbprint : string prop;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management__hostname_configuration__developer_portal *)

type azurerm_api_management__hostname_configuration__management = {
  certificate : string prop option; [@option]  (** certificate *)
  certificate_password : string prop option; [@option]
      (** certificate_password *)
  certificate_source : string prop;  (** certificate_source *)
  certificate_status : string prop;  (** certificate_status *)
  expiry : string prop;  (** expiry *)
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool prop option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string prop option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string prop;  (** subject *)
  thumbprint : string prop;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management__hostname_configuration__management *)

type azurerm_api_management__hostname_configuration__portal = {
  certificate : string prop option; [@option]  (** certificate *)
  certificate_password : string prop option; [@option]
      (** certificate_password *)
  certificate_source : string prop;  (** certificate_source *)
  certificate_status : string prop;  (** certificate_status *)
  expiry : string prop;  (** expiry *)
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool prop option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string prop option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string prop;  (** subject *)
  thumbprint : string prop;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management__hostname_configuration__portal *)

type azurerm_api_management__hostname_configuration__proxy = {
  certificate : string prop option; [@option]  (** certificate *)
  certificate_password : string prop option; [@option]
      (** certificate_password *)
  certificate_source : string prop;  (** certificate_source *)
  certificate_status : string prop;  (** certificate_status *)
  default_ssl_binding : bool prop option; [@option]
      (** default_ssl_binding *)
  expiry : string prop;  (** expiry *)
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool prop option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string prop option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string prop;  (** subject *)
  thumbprint : string prop;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_api_management__hostname_configuration__proxy *)

type azurerm_api_management__hostname_configuration__scm = {
  certificate : string prop option; [@option]  (** certificate *)
  certificate_password : string prop option; [@option]
      (** certificate_password *)
  certificate_source : string prop;  (** certificate_source *)
  certificate_status : string prop;  (** certificate_status *)
  expiry : string prop;  (** expiry *)
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool prop option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string prop option; [@option]
      (** ssl_keyvault_identity_client_id *)
  subject : string prop;  (** subject *)
  thumbprint : string prop;  (** thumbprint *)
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
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_api_management__identity *)

type azurerm_api_management__protocols = {
  enable_http2 : bool prop option; [@option]  (** enable_http2 *)
}
[@@deriving yojson_of]
(** azurerm_api_management__protocols *)

type azurerm_api_management__security = {
  enable_backend_ssl30 : bool prop option; [@option]
      (** enable_backend_ssl30 *)
  enable_backend_tls10 : bool prop option; [@option]
      (** enable_backend_tls10 *)
  enable_backend_tls11 : bool prop option; [@option]
      (** enable_backend_tls11 *)
  enable_frontend_ssl30 : bool prop option; [@option]
      (** enable_frontend_ssl30 *)
  enable_frontend_tls10 : bool prop option; [@option]
      (** enable_frontend_tls10 *)
  enable_frontend_tls11 : bool prop option; [@option]
      (** enable_frontend_tls11 *)
  tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled :
    bool prop option;
      [@option]
      (** tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled *)
  tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled :
    bool prop option;
      [@option]
      (** tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled *)
  tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled :
    bool prop option;
      [@option]
      (** tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled *)
  tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled :
    bool prop option;
      [@option]
      (** tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled *)
  tls_rsa_with_aes128_cbc_sha256_ciphers_enabled : bool prop option;
      [@option]
      (** tls_rsa_with_aes128_cbc_sha256_ciphers_enabled *)
  tls_rsa_with_aes128_cbc_sha_ciphers_enabled : bool prop option;
      [@option]
      (** tls_rsa_with_aes128_cbc_sha_ciphers_enabled *)
  tls_rsa_with_aes128_gcm_sha256_ciphers_enabled : bool prop option;
      [@option]
      (** tls_rsa_with_aes128_gcm_sha256_ciphers_enabled *)
  tls_rsa_with_aes256_cbc_sha256_ciphers_enabled : bool prop option;
      [@option]
      (** tls_rsa_with_aes256_cbc_sha256_ciphers_enabled *)
  tls_rsa_with_aes256_cbc_sha_ciphers_enabled : bool prop option;
      [@option]
      (** tls_rsa_with_aes256_cbc_sha_ciphers_enabled *)
  tls_rsa_with_aes256_gcm_sha384_ciphers_enabled : bool prop option;
      [@option]
      (** tls_rsa_with_aes256_gcm_sha384_ciphers_enabled *)
  triple_des_ciphers_enabled : bool prop option; [@option]
      (** triple_des_ciphers_enabled *)
}
[@@deriving yojson_of]
(** azurerm_api_management__security *)

type azurerm_api_management__sign_in = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_api_management__sign_in *)

type azurerm_api_management__sign_up__terms_of_service = {
  consent_required : bool prop;  (** consent_required *)
  enabled : bool prop;  (** enabled *)
  text : string prop option; [@option]  (** text *)
}
[@@deriving yojson_of]
(** azurerm_api_management__sign_up__terms_of_service *)

type azurerm_api_management__sign_up = {
  enabled : bool prop;  (** enabled *)
  terms_of_service :
    azurerm_api_management__sign_up__terms_of_service list;
}
[@@deriving yojson_of]
(** azurerm_api_management__sign_up *)

type azurerm_api_management__tenant_access = {
  enabled : bool prop;  (** enabled *)
  primary_key : string prop;  (** primary_key *)
  secondary_key : string prop;  (** secondary_key *)
  tenant_id : string prop;  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_api_management__tenant_access *)

type azurerm_api_management__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management__timeouts *)

type azurerm_api_management__virtual_network_configuration = {
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_api_management__virtual_network_configuration *)

type azurerm_api_management__policy = {
  xml_content : string prop;  (** xml_content *)
  xml_link : string prop;  (** xml_link *)
}
[@@deriving yojson_of]

type azurerm_api_management = {
  client_certificate_enabled : bool prop option; [@option]
      (** client_certificate_enabled *)
  gateway_disabled : bool prop option; [@option]
      (** gateway_disabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  min_api_version : string prop option; [@option]
      (** min_api_version *)
  name : string prop;  (** name *)
  notification_sender_email : string prop option; [@option]
      (** notification_sender_email *)
  policy : azurerm_api_management__policy list option; [@option]
      (** policy *)
  public_ip_address_id : string prop option; [@option]
      (** public_ip_address_id *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  publisher_email : string prop;  (** publisher_email *)
  publisher_name : string prop;  (** publisher_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_network_type : string prop option; [@option]
      (** virtual_network_type *)
  zones : string prop list option; [@option]  (** zones *)
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

type t = {
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
  policy : azurerm_api_management__policy list prop;
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

let azurerm_api_management ?client_certificate_enabled
    ?gateway_disabled ?id ?min_api_version ?notification_sender_email
    ?policy ?public_ip_address_id ?public_network_access_enabled
    ?tags ?virtual_network_type ?zones ?timeouts ~location ~name
    ~publisher_email ~publisher_name ~resource_group_name ~sku_name
    ~additional_location ~certificate ~delegation
    ~hostname_configuration ~identity ~protocols ~security ~sign_in
    ~sign_up ~tenant_access ~virtual_network_configuration
    __resource_id =
  let __resource_type = "azurerm_api_management" in
  let __resource =
    ({
       client_certificate_enabled;
       gateway_disabled;
       id;
       location;
       min_api_version;
       name;
       notification_sender_email;
       policy;
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
      : azurerm_api_management)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management __resource);
  let __resource_attributes =
    ({
       client_certificate_enabled =
         Prop.computed __resource_type __resource_id
           "client_certificate_enabled";
       developer_portal_url =
         Prop.computed __resource_type __resource_id
           "developer_portal_url";
       gateway_disabled =
         Prop.computed __resource_type __resource_id
           "gateway_disabled";
       gateway_regional_url =
         Prop.computed __resource_type __resource_id
           "gateway_regional_url";
       gateway_url =
         Prop.computed __resource_type __resource_id "gateway_url";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       management_api_url =
         Prop.computed __resource_type __resource_id
           "management_api_url";
       min_api_version =
         Prop.computed __resource_type __resource_id
           "min_api_version";
       name = Prop.computed __resource_type __resource_id "name";
       notification_sender_email =
         Prop.computed __resource_type __resource_id
           "notification_sender_email";
       policy = Prop.computed __resource_type __resource_id "policy";
       portal_url =
         Prop.computed __resource_type __resource_id "portal_url";
       private_ip_addresses =
         Prop.computed __resource_type __resource_id
           "private_ip_addresses";
       public_ip_address_id =
         Prop.computed __resource_type __resource_id
           "public_ip_address_id";
       public_ip_addresses =
         Prop.computed __resource_type __resource_id
           "public_ip_addresses";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       publisher_email =
         Prop.computed __resource_type __resource_id
           "publisher_email";
       publisher_name =
         Prop.computed __resource_type __resource_id "publisher_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       scm_url =
         Prop.computed __resource_type __resource_id "scm_url";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       virtual_network_type =
         Prop.computed __resource_type __resource_id
           "virtual_network_type";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_active_directory_domain_service__initial_replica_set = {
  domain_controller_ip_addresses : string list;
      (** domain_controller_ip_addresses *)
  external_access_ip_address : string;
      (** external_access_ip_address *)
  id : string;  (** id *)
  location : string;  (** location *)
  service_status : string;  (** service_status *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service__initial_replica_set *)

type azurerm_active_directory_domain_service__notifications = {
  additional_recipients : string list option; [@option]
      (** additional_recipients *)
  notify_dc_admins : bool option; [@option]  (** notify_dc_admins *)
  notify_global_admins : bool option; [@option]
      (** notify_global_admins *)
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service__notifications *)

type azurerm_active_directory_domain_service__secure_ldap = {
  certificate_expiry : string;  (** certificate_expiry *)
  certificate_thumbprint : string;  (** certificate_thumbprint *)
  enabled : bool;  (** enabled *)
  external_access_enabled : bool option; [@option]
      (** external_access_enabled *)
  pfx_certificate : string;  (** pfx_certificate *)
  pfx_certificate_password : string;  (** pfx_certificate_password *)
  public_certificate : string;  (** public_certificate *)
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service__secure_ldap *)

type azurerm_active_directory_domain_service__security = {
  kerberos_armoring_enabled : bool option; [@option]
      (** kerberos_armoring_enabled *)
  kerberos_rc4_encryption_enabled : bool option; [@option]
      (** kerberos_rc4_encryption_enabled *)
  ntlm_v1_enabled : bool option; [@option]  (** ntlm_v1_enabled *)
  sync_kerberos_passwords : bool option; [@option]
      (** sync_kerberos_passwords *)
  sync_ntlm_passwords : bool option; [@option]
      (** sync_ntlm_passwords *)
  sync_on_prem_passwords : bool option; [@option]
      (** sync_on_prem_passwords *)
  tls_v1_enabled : bool option; [@option]  (** tls_v1_enabled *)
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service__security *)

type azurerm_active_directory_domain_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service__timeouts *)

type azurerm_active_directory_domain_service = {
  domain_configuration_type : string option; [@option]
      (** domain_configuration_type *)
  domain_name : string;  (** domain_name *)
  filtered_sync_enabled : bool option; [@option]
      (** filtered_sync_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string;  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  initial_replica_set :
    azurerm_active_directory_domain_service__initial_replica_set list;
  notifications :
    azurerm_active_directory_domain_service__notifications list;
  secure_ldap :
    azurerm_active_directory_domain_service__secure_ldap list;
  security : azurerm_active_directory_domain_service__security list;
  timeouts : azurerm_active_directory_domain_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service *)

let azurerm_active_directory_domain_service
    ?domain_configuration_type ?filtered_sync_enabled ?tags ?timeouts
    ~domain_name ~location ~name ~resource_group_name ~sku
    ~initial_replica_set ~notifications ~secure_ldap ~security
    __resource_id =
  let __resource_type = "azurerm_active_directory_domain_service" in
  let __resource =
    {
      domain_configuration_type;
      domain_name;
      filtered_sync_enabled;
      location;
      name;
      resource_group_name;
      sku;
      tags;
      initial_replica_set;
      notifications;
      secure_ldap;
      security;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_active_directory_domain_service __resource);
  ()

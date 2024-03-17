(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_security_center_storage_defender__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_storage_defender__timeouts *)

type azurerm_security_center_storage_defender = {
  malware_scanning_on_upload_cap_gb_per_month : float option;
      [@option]
      (** malware_scanning_on_upload_cap_gb_per_month *)
  malware_scanning_on_upload_enabled : bool option; [@option]
      (** malware_scanning_on_upload_enabled *)
  override_subscription_settings_enabled : bool option; [@option]
      (** override_subscription_settings_enabled *)
  sensitive_data_discovery_enabled : bool option; [@option]
      (** sensitive_data_discovery_enabled *)
  storage_account_id : string;  (** storage_account_id *)
  timeouts :
    azurerm_security_center_storage_defender__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_storage_defender *)

let azurerm_security_center_storage_defender
    ?malware_scanning_on_upload_cap_gb_per_month
    ?malware_scanning_on_upload_enabled
    ?override_subscription_settings_enabled
    ?sensitive_data_discovery_enabled ?timeouts ~storage_account_id
    __resource_id =
  let __resource_type = "azurerm_security_center_storage_defender" in
  let __resource =
    {
      malware_scanning_on_upload_cap_gb_per_month;
      malware_scanning_on_upload_enabled;
      override_subscription_settings_enabled;
      sensitive_data_discovery_enabled;
      storage_account_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_storage_defender __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_security_center_storage_defender = {
  id : string prop option; [@option]  (** id *)
  malware_scanning_on_upload_cap_gb_per_month : float prop option;
      [@option]
      (** malware_scanning_on_upload_cap_gb_per_month *)
  malware_scanning_on_upload_enabled : bool prop option; [@option]
      (** malware_scanning_on_upload_enabled *)
  override_subscription_settings_enabled : bool prop option;
      [@option]
      (** override_subscription_settings_enabled *)
  sensitive_data_discovery_enabled : bool prop option; [@option]
      (** sensitive_data_discovery_enabled *)
  storage_account_id : string prop;  (** storage_account_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_storage_defender *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_storage_defender ?id
    ?malware_scanning_on_upload_cap_gb_per_month
    ?malware_scanning_on_upload_enabled
    ?override_subscription_settings_enabled
    ?sensitive_data_discovery_enabled ?timeouts ~storage_account_id
    () : azurerm_security_center_storage_defender =
  {
    id;
    malware_scanning_on_upload_cap_gb_per_month;
    malware_scanning_on_upload_enabled;
    override_subscription_settings_enabled;
    sensitive_data_discovery_enabled;
    storage_account_id;
    timeouts;
  }

type t = {
  id : string prop;
  malware_scanning_on_upload_cap_gb_per_month : float prop;
  malware_scanning_on_upload_enabled : bool prop;
  override_subscription_settings_enabled : bool prop;
  sensitive_data_discovery_enabled : bool prop;
  storage_account_id : string prop;
}

let register ?tf_module ?id
    ?malware_scanning_on_upload_cap_gb_per_month
    ?malware_scanning_on_upload_enabled
    ?override_subscription_settings_enabled
    ?sensitive_data_discovery_enabled ?timeouts ~storage_account_id
    __resource_id =
  let __resource_type = "azurerm_security_center_storage_defender" in
  let __resource =
    azurerm_security_center_storage_defender ?id
      ?malware_scanning_on_upload_cap_gb_per_month
      ?malware_scanning_on_upload_enabled
      ?override_subscription_settings_enabled
      ?sensitive_data_discovery_enabled ?timeouts ~storage_account_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_storage_defender __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       malware_scanning_on_upload_cap_gb_per_month =
         Prop.computed __resource_type __resource_id
           "malware_scanning_on_upload_cap_gb_per_month";
       malware_scanning_on_upload_enabled =
         Prop.computed __resource_type __resource_id
           "malware_scanning_on_upload_enabled";
       override_subscription_settings_enabled =
         Prop.computed __resource_type __resource_id
           "override_subscription_settings_enabled";
       sensitive_data_discovery_enabled =
         Prop.computed __resource_type __resource_id
           "sensitive_data_discovery_enabled";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?malware_scanning_on_upload_cap_gb_per_month
    ?malware_scanning_on_upload_enabled
    ?override_subscription_settings_enabled
    ?sensitive_data_discovery_enabled ?timeouts ~storage_account_id
    __id =
  let __type = "azurerm_security_center_storage_defender" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       malware_scanning_on_upload_cap_gb_per_month =
         Prop.computed __type __id
           "malware_scanning_on_upload_cap_gb_per_month";
       malware_scanning_on_upload_enabled =
         Prop.computed __type __id
           "malware_scanning_on_upload_enabled";
       override_subscription_settings_enabled =
         Prop.computed __type __id
           "override_subscription_settings_enabled";
       sensitive_data_discovery_enabled =
         Prop.computed __type __id "sensitive_data_discovery_enabled";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_security_center_storage_defender
        (azurerm_security_center_storage_defender ?id
           ?malware_scanning_on_upload_cap_gb_per_month
           ?malware_scanning_on_upload_enabled
           ?override_subscription_settings_enabled
           ?sensitive_data_discovery_enabled ?timeouts
           ~storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id
    ?malware_scanning_on_upload_cap_gb_per_month
    ?malware_scanning_on_upload_enabled
    ?override_subscription_settings_enabled
    ?sensitive_data_discovery_enabled ?timeouts ~storage_account_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?malware_scanning_on_upload_cap_gb_per_month
      ?malware_scanning_on_upload_enabled
      ?override_subscription_settings_enabled
      ?sensitive_data_discovery_enabled ?timeouts ~storage_account_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

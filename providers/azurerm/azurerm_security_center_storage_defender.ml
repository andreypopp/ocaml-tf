(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_security_center_storage_defender = {
  id : string prop option; [@option]
  malware_scanning_on_upload_cap_gb_per_month : float prop option;
      [@option]
  malware_scanning_on_upload_enabled : bool prop option; [@option]
  override_subscription_settings_enabled : bool prop option;
      [@option]
  sensitive_data_discovery_enabled : bool prop option; [@option]
  storage_account_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_security_center_storage_defender) -> ()

let yojson_of_azurerm_security_center_storage_defender =
  (function
   | {
       id = v_id;
       malware_scanning_on_upload_cap_gb_per_month =
         v_malware_scanning_on_upload_cap_gb_per_month;
       malware_scanning_on_upload_enabled =
         v_malware_scanning_on_upload_enabled;
       override_subscription_settings_enabled =
         v_override_subscription_settings_enabled;
       sensitive_data_discovery_enabled =
         v_sensitive_data_discovery_enabled;
       storage_account_id = v_storage_account_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         match v_sensitive_data_discovery_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sensitive_data_discovery_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_override_subscription_settings_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "override_subscription_settings_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_malware_scanning_on_upload_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "malware_scanning_on_upload_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_malware_scanning_on_upload_cap_gb_per_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "malware_scanning_on_upload_cap_gb_per_month", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_security_center_storage_defender ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_security_center_storage_defender

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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

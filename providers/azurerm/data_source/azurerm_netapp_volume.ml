(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type data_protection_replication = {
  endpoint_type : string prop;
  remote_volume_location : string prop;
  remote_volume_resource_id : string prop;
  replication_frequency : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_protection_replication) -> ()

let yojson_of_data_protection_replication =
  (function
   | {
       endpoint_type = v_endpoint_type;
       remote_volume_location = v_remote_volume_location;
       remote_volume_resource_id = v_remote_volume_resource_id;
       replication_frequency = v_replication_frequency;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replication_frequency
         in
         ("replication_frequency", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_remote_volume_resource_id
         in
         ("remote_volume_resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_remote_volume_location
         in
         ("remote_volume_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_type in
         ("endpoint_type", arg) :: bnds
       in
       `Assoc bnds
    : data_protection_replication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_protection_replication

[@@@deriving.end]

type azurerm_netapp_volume = {
  account_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  pool_name : string prop;
  resource_group_name : string prop;
  security_style : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_netapp_volume) -> ()

let yojson_of_azurerm_netapp_volume =
  (function
   | {
       account_name = v_account_name;
       id = v_id;
       name = v_name;
       pool_name = v_pool_name;
       resource_group_name = v_resource_group_name;
       security_style = v_security_style;
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
         match v_security_style with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_style", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pool_name in
         ("pool_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_netapp_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_netapp_volume

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_netapp_volume ?id ?security_style ?timeouts ~account_name
    ~name ~pool_name ~resource_group_name () : azurerm_netapp_volume
    =
  {
    account_name;
    id;
    name;
    pool_name;
    resource_group_name;
    security_style;
    timeouts;
  }

type t = {
  account_name : string prop;
  data_protection_replication :
    data_protection_replication list prop;
  encryption_key_source : string prop;
  id : string prop;
  key_vault_private_endpoint_id : string prop;
  location : string prop;
  mount_ip_addresses : string list prop;
  name : string prop;
  network_features : string prop;
  pool_name : string prop;
  protocols : string list prop;
  resource_group_name : string prop;
  security_style : string prop;
  service_level : string prop;
  smb_access_based_enumeration_enabled : bool prop;
  smb_non_browsable_enabled : bool prop;
  storage_quota_in_gb : float prop;
  subnet_id : string prop;
  volume_path : string prop;
  zone : string prop;
}

let make ?id ?security_style ?timeouts ~account_name ~name ~pool_name
    ~resource_group_name __id =
  let __type = "azurerm_netapp_volume" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       data_protection_replication =
         Prop.computed __type __id "data_protection_replication";
       encryption_key_source =
         Prop.computed __type __id "encryption_key_source";
       id = Prop.computed __type __id "id";
       key_vault_private_endpoint_id =
         Prop.computed __type __id "key_vault_private_endpoint_id";
       location = Prop.computed __type __id "location";
       mount_ip_addresses =
         Prop.computed __type __id "mount_ip_addresses";
       name = Prop.computed __type __id "name";
       network_features =
         Prop.computed __type __id "network_features";
       pool_name = Prop.computed __type __id "pool_name";
       protocols = Prop.computed __type __id "protocols";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       security_style = Prop.computed __type __id "security_style";
       service_level = Prop.computed __type __id "service_level";
       smb_access_based_enumeration_enabled =
         Prop.computed __type __id
           "smb_access_based_enumeration_enabled";
       smb_non_browsable_enabled =
         Prop.computed __type __id "smb_non_browsable_enabled";
       storage_quota_in_gb =
         Prop.computed __type __id "storage_quota_in_gb";
       subnet_id = Prop.computed __type __id "subnet_id";
       volume_path = Prop.computed __type __id "volume_path";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_volume
        (azurerm_netapp_volume ?id ?security_style ?timeouts
           ~account_name ~name ~pool_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?security_style ?timeouts ~account_name
    ~name ~pool_name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?security_style ?timeouts ~account_name ~name ~pool_name
      ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type encryption_settings__key_encryption_key = {
  key_url : string prop;
  source_vault_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_settings__key_encryption_key) -> ()

let yojson_of_encryption_settings__key_encryption_key =
  (function
   | { key_url = v_key_url; source_vault_id = v_source_vault_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_vault_id
         in
         ("source_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_url in
         ("key_url", arg) :: bnds
       in
       `Assoc bnds
    : encryption_settings__key_encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_settings__key_encryption_key

[@@@deriving.end]

type encryption_settings__disk_encryption_key = {
  secret_url : string prop;
  source_vault_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_settings__disk_encryption_key) -> ()

let yojson_of_encryption_settings__disk_encryption_key =
  (function
   | {
       secret_url = v_secret_url;
       source_vault_id = v_source_vault_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_vault_id
         in
         ("source_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_url in
         ("secret_url", arg) :: bnds
       in
       `Assoc bnds
    : encryption_settings__disk_encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_settings__disk_encryption_key

[@@@deriving.end]

type encryption_settings = {
  disk_encryption_key :
    encryption_settings__disk_encryption_key list;
  enabled : bool prop;
  key_encryption_key : encryption_settings__key_encryption_key list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_settings) -> ()

let yojson_of_encryption_settings =
  (function
   | {
       disk_encryption_key = v_disk_encryption_key;
       enabled = v_enabled;
       key_encryption_key = v_key_encryption_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_encryption_settings__key_encryption_key
             v_key_encryption_key
         in
         ("key_encryption_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_encryption_settings__disk_encryption_key
             v_disk_encryption_key
         in
         ("disk_encryption_key", arg) :: bnds
       in
       `Assoc bnds
    : encryption_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_settings

[@@@deriving.end]

type azurerm_snapshot = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_snapshot) -> ()

let yojson_of_azurerm_snapshot =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
       `Assoc bnds
    : azurerm_snapshot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_snapshot

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_snapshot ?id ?timeouts ~name ~resource_group_name () :
    azurerm_snapshot =
  { id; name; resource_group_name; timeouts }

type t = {
  creation_option : string prop;
  disk_size_gb : float prop;
  encryption_settings : encryption_settings list prop;
  id : string prop;
  name : string prop;
  os_type : string prop;
  resource_group_name : string prop;
  source_resource_id : string prop;
  source_uri : string prop;
  storage_account_id : string prop;
  time_created : string prop;
  trusted_launch_enabled : bool prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_snapshot" in
  let __attrs =
    ({
       creation_option = Prop.computed __type __id "creation_option";
       disk_size_gb = Prop.computed __type __id "disk_size_gb";
       encryption_settings =
         Prop.computed __type __id "encryption_settings";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       os_type = Prop.computed __type __id "os_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source_resource_id =
         Prop.computed __type __id "source_resource_id";
       source_uri = Prop.computed __type __id "source_uri";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       time_created = Prop.computed __type __id "time_created";
       trusted_launch_enabled =
         Prop.computed __type __id "trusted_launch_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_snapshot
        (azurerm_snapshot ?id ?timeouts ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

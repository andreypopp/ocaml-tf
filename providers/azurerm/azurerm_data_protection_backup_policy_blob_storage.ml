(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_data_protection_backup_policy_blob_storage = {
  id : string prop option; [@option]
  name : string prop;
  retention_duration : string prop;
  vault_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_data_protection_backup_policy_blob_storage) -> ()

let yojson_of_azurerm_data_protection_backup_policy_blob_storage =
  (function
   | {
       id = v_id;
       name = v_name;
       retention_duration = v_retention_duration;
       vault_id = v_vault_id;
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
         let arg = yojson_of_prop yojson_of_string v_vault_id in
         ("vault_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_retention_duration
         in
         ("retention_duration", arg) :: bnds
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
    : azurerm_data_protection_backup_policy_blob_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_protection_backup_policy_blob_storage

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_protection_backup_policy_blob_storage ?id ?timeouts
    ~name ~retention_duration ~vault_id () :
    azurerm_data_protection_backup_policy_blob_storage =
  { id; name; retention_duration; vault_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  retention_duration : string prop;
  vault_id : string prop;
}

let make ?id ?timeouts ~name ~retention_duration ~vault_id __id =
  let __type =
    "azurerm_data_protection_backup_policy_blob_storage"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       retention_duration =
         Prop.computed __type __id "retention_duration";
       vault_id = Prop.computed __type __id "vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_policy_blob_storage
        (azurerm_data_protection_backup_policy_blob_storage ?id
           ?timeouts ~name ~retention_duration ~vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~retention_duration
    ~vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~retention_duration ~vault_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

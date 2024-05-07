(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

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

type azurerm_data_protection_backup_vault = {
  datastore_type : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  redundancy : string prop;
  resource_group_name : string prop;
  retention_duration_in_days : float prop option; [@option]
  soft_delete : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_protection_backup_vault) -> ()

let yojson_of_azurerm_data_protection_backup_vault =
  (function
   | {
       datastore_type = v_datastore_type;
       id = v_id;
       location = v_location;
       name = v_name;
       redundancy = v_redundancy;
       resource_group_name = v_resource_group_name;
       retention_duration_in_days = v_retention_duration_in_days;
       soft_delete = v_soft_delete;
       tags = v_tags;
       identity = v_identity;
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
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_soft_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "soft_delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_duration_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_duration_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_redundancy in
         ("redundancy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_datastore_type
         in
         ("datastore_type", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_protection_backup_vault ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_protection_backup_vault

[@@@deriving.end]

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_protection_backup_vault ?id
    ?retention_duration_in_days ?soft_delete ?tags ?(identity = [])
    ?timeouts ~datastore_type ~location ~name ~redundancy
    ~resource_group_name () : azurerm_data_protection_backup_vault =
  {
    datastore_type;
    id;
    location;
    name;
    redundancy;
    resource_group_name;
    retention_duration_in_days;
    soft_delete;
    tags;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  datastore_type : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  redundancy : string prop;
  resource_group_name : string prop;
  retention_duration_in_days : float prop;
  soft_delete : string prop;
  tags : (string * string) list prop;
}

let make ?id ?retention_duration_in_days ?soft_delete ?tags
    ?(identity = []) ?timeouts ~datastore_type ~location ~name
    ~redundancy ~resource_group_name __id =
  let __type = "azurerm_data_protection_backup_vault" in
  let __attrs =
    ({
       tf_name = __id;
       datastore_type = Prop.computed __type __id "datastore_type";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       redundancy = Prop.computed __type __id "redundancy";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       retention_duration_in_days =
         Prop.computed __type __id "retention_duration_in_days";
       soft_delete = Prop.computed __type __id "soft_delete";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_vault
        (azurerm_data_protection_backup_vault ?id
           ?retention_duration_in_days ?soft_delete ?tags ~identity
           ?timeouts ~datastore_type ~location ~name ~redundancy
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?retention_duration_in_days ?soft_delete
    ?tags ?(identity = []) ?timeouts ~datastore_type ~location ~name
    ~redundancy ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?retention_duration_in_days ?soft_delete ?tags ~identity
      ?timeouts ~datastore_type ~location ~name ~redundancy
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

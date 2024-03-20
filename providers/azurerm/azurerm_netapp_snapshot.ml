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

type azurerm_netapp_snapshot = {
  account_name : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  pool_name : string prop;
  resource_group_name : string prop;
  volume_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_netapp_snapshot) -> ()

let yojson_of_azurerm_netapp_snapshot =
  (function
   | {
       account_name = v_account_name;
       id = v_id;
       location = v_location;
       name = v_name;
       pool_name = v_pool_name;
       resource_group_name = v_resource_group_name;
       volume_name = v_volume_name;
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
         let arg = yojson_of_prop yojson_of_string v_volume_name in
         ("volume_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_netapp_snapshot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_netapp_snapshot

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_netapp_snapshot ?id ?timeouts ~account_name ~location
    ~name ~pool_name ~resource_group_name ~volume_name () :
    azurerm_netapp_snapshot =
  {
    account_name;
    id;
    location;
    name;
    pool_name;
    resource_group_name;
    volume_name;
    timeouts;
  }

type t = {
  account_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  pool_name : string prop;
  resource_group_name : string prop;
  volume_name : string prop;
}

let make ?id ?timeouts ~account_name ~location ~name ~pool_name
    ~resource_group_name ~volume_name __id =
  let __type = "azurerm_netapp_snapshot" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       pool_name = Prop.computed __type __id "pool_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       volume_name = Prop.computed __type __id "volume_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_snapshot
        (azurerm_netapp_snapshot ?id ?timeouts ~account_name
           ~location ~name ~pool_name ~resource_group_name
           ~volume_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_name ~location ~name
    ~pool_name ~resource_group_name ~volume_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_name ~location ~name ~pool_name
      ~resource_group_name ~volume_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

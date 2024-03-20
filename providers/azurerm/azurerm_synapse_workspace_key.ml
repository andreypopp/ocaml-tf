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

type azurerm_synapse_workspace_key = {
  active : bool prop;
  customer_managed_key_name : string prop;
  customer_managed_key_versionless_id : string prop option; [@option]
  id : string prop option; [@option]
  synapse_workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_synapse_workspace_key) -> ()

let yojson_of_azurerm_synapse_workspace_key =
  (function
   | {
       active = v_active;
       customer_managed_key_name = v_customer_managed_key_name;
       customer_managed_key_versionless_id =
         v_customer_managed_key_versionless_id;
       id = v_id;
       synapse_workspace_id = v_synapse_workspace_id;
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
           yojson_of_prop yojson_of_string v_synapse_workspace_id
         in
         ("synapse_workspace_id", arg) :: bnds
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
         match v_customer_managed_key_versionless_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_managed_key_versionless_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_customer_managed_key_name
         in
         ("customer_managed_key_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_active in
         ("active", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_synapse_workspace_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_synapse_workspace_key

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_workspace_key
    ?customer_managed_key_versionless_id ?id ?timeouts ~active
    ~customer_managed_key_name ~synapse_workspace_id () :
    azurerm_synapse_workspace_key =
  {
    active;
    customer_managed_key_name;
    customer_managed_key_versionless_id;
    id;
    synapse_workspace_id;
    timeouts;
  }

type t = {
  active : bool prop;
  customer_managed_key_name : string prop;
  customer_managed_key_versionless_id : string prop;
  id : string prop;
  synapse_workspace_id : string prop;
}

let make ?customer_managed_key_versionless_id ?id ?timeouts ~active
    ~customer_managed_key_name ~synapse_workspace_id __id =
  let __type = "azurerm_synapse_workspace_key" in
  let __attrs =
    ({
       active = Prop.computed __type __id "active";
       customer_managed_key_name =
         Prop.computed __type __id "customer_managed_key_name";
       customer_managed_key_versionless_id =
         Prop.computed __type __id
           "customer_managed_key_versionless_id";
       id = Prop.computed __type __id "id";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_workspace_key
        (azurerm_synapse_workspace_key
           ?customer_managed_key_versionless_id ?id ?timeouts ~active
           ~customer_managed_key_name ~synapse_workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?customer_managed_key_versionless_id ?id
    ?timeouts ~active ~customer_managed_key_name
    ~synapse_workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?customer_managed_key_versionless_id ?id ?timeouts ~active
      ~customer_managed_key_name ~synapse_workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

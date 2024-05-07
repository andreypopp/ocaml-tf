(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rbac_authorization = { resource_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : rbac_authorization) -> ()

let yojson_of_rbac_authorization =
  (function
   | { resource_id = v_resource_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       `Assoc bnds
    : rbac_authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rbac_authorization

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

type azurerm_data_factory_integration_runtime_self_hosted = {
  data_factory_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  rbac_authorization : rbac_authorization list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_data_factory_integration_runtime_self_hosted) -> ()

let yojson_of_azurerm_data_factory_integration_runtime_self_hosted =
  (function
   | {
       data_factory_id = v_data_factory_id;
       description = v_description;
       id = v_id;
       name = v_name;
       rbac_authorization = v_rbac_authorization;
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
           yojson_of_list yojson_of_rbac_authorization
             v_rbac_authorization
         in
         ("rbac_authorization", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_integration_runtime_self_hosted ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_data_factory_integration_runtime_self_hosted

[@@@deriving.end]

let rbac_authorization ~resource_id () : rbac_authorization =
  { resource_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_integration_runtime_self_hosted ?description
    ?id ?timeouts ~data_factory_id ~name ~rbac_authorization () :
    azurerm_data_factory_integration_runtime_self_hosted =
  {
    data_factory_id;
    description;
    id;
    name;
    rbac_authorization;
    timeouts;
  }

type t = {
  tf_name : string;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  primary_authorization_key : string prop;
  secondary_authorization_key : string prop;
}

let make ?description ?id ?timeouts ~data_factory_id ~name
    ~rbac_authorization __id =
  let __type =
    "azurerm_data_factory_integration_runtime_self_hosted"
  in
  let __attrs =
    ({
       tf_name = __id;
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       primary_authorization_key =
         Prop.computed __type __id "primary_authorization_key";
       secondary_authorization_key =
         Prop.computed __type __id "secondary_authorization_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_integration_runtime_self_hosted
        (azurerm_data_factory_integration_runtime_self_hosted
           ?description ?id ?timeouts ~data_factory_id ~name
           ~rbac_authorization ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~data_factory_id
    ~name ~rbac_authorization __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~data_factory_id ~name
      ~rbac_authorization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

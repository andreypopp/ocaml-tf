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

type azurerm_machine_learning_datastore_datalake_gen2 = {
  authority_url : string prop option; [@option]
  client_id : string prop option; [@option]
  client_secret : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  service_data_identity : string prop option; [@option]
  storage_container_id : string prop;
  tags : (string * string prop) list option; [@option]
  tenant_id : string prop option; [@option]
  workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_machine_learning_datastore_datalake_gen2) -> ()

let yojson_of_azurerm_machine_learning_datastore_datalake_gen2 =
  (function
   | {
       authority_url = v_authority_url;
       client_id = v_client_id;
       client_secret = v_client_secret;
       description = v_description;
       id = v_id;
       name = v_name;
       service_data_identity = v_service_data_identity;
       storage_container_id = v_storage_container_id;
       tags = v_tags;
       tenant_id = v_tenant_id;
       workspace_id = v_workspace_id;
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
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_storage_container_id
         in
         ("storage_container_id", arg) :: bnds
       in
       let bnds =
         match v_service_data_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_data_identity", arg in
             bnd :: bnds
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
         match v_client_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authority_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authority_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_machine_learning_datastore_datalake_gen2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_machine_learning_datastore_datalake_gen2

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_machine_learning_datastore_datalake_gen2 ?authority_url
    ?client_id ?client_secret ?description ?id ?service_data_identity
    ?tags ?tenant_id ?timeouts ~name ~storage_container_id
    ~workspace_id () :
    azurerm_machine_learning_datastore_datalake_gen2 =
  {
    authority_url;
    client_id;
    client_secret;
    description;
    id;
    name;
    service_data_identity;
    storage_container_id;
    tags;
    tenant_id;
    workspace_id;
    timeouts;
  }

type t = {
  authority_url : string prop;
  client_id : string prop;
  client_secret : string prop;
  description : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  service_data_identity : string prop;
  storage_container_id : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  workspace_id : string prop;
}

let make ?authority_url ?client_id ?client_secret ?description ?id
    ?service_data_identity ?tags ?tenant_id ?timeouts ~name
    ~storage_container_id ~workspace_id __id =
  let __type = "azurerm_machine_learning_datastore_datalake_gen2" in
  let __attrs =
    ({
       authority_url = Prop.computed __type __id "authority_url";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       name = Prop.computed __type __id "name";
       service_data_identity =
         Prop.computed __type __id "service_data_identity";
       storage_container_id =
         Prop.computed __type __id "storage_container_id";
       tags = Prop.computed __type __id "tags";
       tenant_id = Prop.computed __type __id "tenant_id";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_machine_learning_datastore_datalake_gen2
        (azurerm_machine_learning_datastore_datalake_gen2
           ?authority_url ?client_id ?client_secret ?description ?id
           ?service_data_identity ?tags ?tenant_id ?timeouts ~name
           ~storage_container_id ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?authority_url ?client_id ?client_secret
    ?description ?id ?service_data_identity ?tags ?tenant_id
    ?timeouts ~name ~storage_container_id ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?authority_url ?client_id ?client_secret ?description ?id
      ?service_data_identity ?tags ?tenant_id ?timeouts ~name
      ~storage_container_id ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

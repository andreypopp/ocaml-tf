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

type azurerm_iothub_endpoint_cosmosdb_account = {
  authentication_type : string prop option; [@option]
  container_name : string prop;
  database_name : string prop;
  endpoint_uri : string prop;
  id : string prop option; [@option]
  identity_id : string prop option; [@option]
  iothub_id : string prop;
  name : string prop;
  partition_key_name : string prop option; [@option]
  partition_key_template : string prop option; [@option]
  primary_key : string prop option; [@option]
  resource_group_name : string prop;
  secondary_key : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iothub_endpoint_cosmosdb_account) -> ()

let yojson_of_azurerm_iothub_endpoint_cosmosdb_account =
  (function
   | {
       authentication_type = v_authentication_type;
       container_name = v_container_name;
       database_name = v_database_name;
       endpoint_uri = v_endpoint_uri;
       id = v_id;
       identity_id = v_identity_id;
       iothub_id = v_iothub_id;
       name = v_name;
       partition_key_name = v_partition_key_name;
       partition_key_template = v_partition_key_template;
       primary_key = v_primary_key;
       resource_group_name = v_resource_group_name;
       secondary_key = v_secondary_key;
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
         match v_secondary_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secondary_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_primary_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition_key_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition_key_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iothub_id in
         ("iothub_id", arg) :: bnds
       in
       let bnds =
         match v_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_id", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_uri in
         ("endpoint_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       let bnds =
         match v_authentication_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_iothub_endpoint_cosmosdb_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iothub_endpoint_cosmosdb_account

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_endpoint_cosmosdb_account ?authentication_type ?id
    ?identity_id ?partition_key_name ?partition_key_template
    ?primary_key ?secondary_key ?timeouts ~container_name
    ~database_name ~endpoint_uri ~iothub_id ~name
    ~resource_group_name () :
    azurerm_iothub_endpoint_cosmosdb_account =
  {
    authentication_type;
    container_name;
    database_name;
    endpoint_uri;
    id;
    identity_id;
    iothub_id;
    name;
    partition_key_name;
    partition_key_template;
    primary_key;
    resource_group_name;
    secondary_key;
    timeouts;
  }

type t = {
  authentication_type : string prop;
  container_name : string prop;
  database_name : string prop;
  endpoint_uri : string prop;
  id : string prop;
  identity_id : string prop;
  iothub_id : string prop;
  name : string prop;
  partition_key_name : string prop;
  partition_key_template : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_key : string prop;
}

let make ?authentication_type ?id ?identity_id ?partition_key_name
    ?partition_key_template ?primary_key ?secondary_key ?timeouts
    ~container_name ~database_name ~endpoint_uri ~iothub_id ~name
    ~resource_group_name __id =
  let __type = "azurerm_iothub_endpoint_cosmosdb_account" in
  let __attrs =
    ({
       authentication_type =
         Prop.computed __type __id "authentication_type";
       container_name = Prop.computed __type __id "container_name";
       database_name = Prop.computed __type __id "database_name";
       endpoint_uri = Prop.computed __type __id "endpoint_uri";
       id = Prop.computed __type __id "id";
       identity_id = Prop.computed __type __id "identity_id";
       iothub_id = Prop.computed __type __id "iothub_id";
       name = Prop.computed __type __id "name";
       partition_key_name =
         Prop.computed __type __id "partition_key_name";
       partition_key_template =
         Prop.computed __type __id "partition_key_template";
       primary_key = Prop.computed __type __id "primary_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_key = Prop.computed __type __id "secondary_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_endpoint_cosmosdb_account
        (azurerm_iothub_endpoint_cosmosdb_account
           ?authentication_type ?id ?identity_id ?partition_key_name
           ?partition_key_template ?primary_key ?secondary_key
           ?timeouts ~container_name ~database_name ~endpoint_uri
           ~iothub_id ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_type ?id ?identity_id
    ?partition_key_name ?partition_key_template ?primary_key
    ?secondary_key ?timeouts ~container_name ~database_name
    ~endpoint_uri ~iothub_id ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_type ?id ?identity_id ?partition_key_name
      ?partition_key_template ?primary_key ?secondary_key ?timeouts
      ~container_name ~database_name ~endpoint_uri ~iothub_id ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

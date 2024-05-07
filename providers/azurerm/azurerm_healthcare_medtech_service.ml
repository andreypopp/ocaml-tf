(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
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

type azurerm_healthcare_medtech_service = {
  device_mapping_json : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_name : string prop;
  eventhub_namespace_name : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  workspace_id : string prop;
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_healthcare_medtech_service) -> ()

let yojson_of_azurerm_healthcare_medtech_service =
  (function
   | {
       device_mapping_json = v_device_mapping_json;
       eventhub_consumer_group_name = v_eventhub_consumer_group_name;
       eventhub_name = v_eventhub_name;
       eventhub_namespace_name = v_eventhub_namespace_name;
       id = v_id;
       location = v_location;
       name = v_name;
       tags = v_tags;
       workspace_id = v_workspace_id;
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
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_eventhub_namespace_name
         in
         ("eventhub_namespace_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_eventhub_name in
         ("eventhub_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_eventhub_consumer_group_name
         in
         ("eventhub_consumer_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_device_mapping_json
         in
         ("device_mapping_json", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_healthcare_medtech_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_healthcare_medtech_service

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_healthcare_medtech_service ?id ?tags ?(identity = [])
    ?timeouts ~device_mapping_json ~eventhub_consumer_group_name
    ~eventhub_name ~eventhub_namespace_name ~location ~name
    ~workspace_id () : azurerm_healthcare_medtech_service =
  {
    device_mapping_json;
    eventhub_consumer_group_name;
    eventhub_name;
    eventhub_namespace_name;
    id;
    location;
    name;
    tags;
    workspace_id;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  device_mapping_json : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_name : string prop;
  eventhub_namespace_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

let make ?id ?tags ?(identity = []) ?timeouts ~device_mapping_json
    ~eventhub_consumer_group_name ~eventhub_name
    ~eventhub_namespace_name ~location ~name ~workspace_id __id =
  let __type = "azurerm_healthcare_medtech_service" in
  let __attrs =
    ({
       tf_name = __id;
       device_mapping_json =
         Prop.computed __type __id "device_mapping_json";
       eventhub_consumer_group_name =
         Prop.computed __type __id "eventhub_consumer_group_name";
       eventhub_name = Prop.computed __type __id "eventhub_name";
       eventhub_namespace_name =
         Prop.computed __type __id "eventhub_namespace_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_healthcare_medtech_service
        (azurerm_healthcare_medtech_service ?id ?tags ~identity
           ?timeouts ~device_mapping_json
           ~eventhub_consumer_group_name ~eventhub_name
           ~eventhub_namespace_name ~location ~name ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?(identity = []) ?timeouts
    ~device_mapping_json ~eventhub_consumer_group_name ~eventhub_name
    ~eventhub_namespace_name ~location ~name ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~identity ?timeouts ~device_mapping_json
      ~eventhub_consumer_group_name ~eventhub_name
      ~eventhub_namespace_name ~location ~name ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

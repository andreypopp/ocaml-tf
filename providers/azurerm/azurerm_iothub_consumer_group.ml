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

type azurerm_iothub_consumer_group = {
  eventhub_endpoint_name : string prop;
  id : string prop option; [@option]
  iothub_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iothub_consumer_group) -> ()

let yojson_of_azurerm_iothub_consumer_group =
  (function
   | {
       eventhub_endpoint_name = v_eventhub_endpoint_name;
       id = v_id;
       iothub_name = v_iothub_name;
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
         let arg = yojson_of_prop yojson_of_string v_iothub_name in
         ("iothub_name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_eventhub_endpoint_name
         in
         ("eventhub_endpoint_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_iothub_consumer_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iothub_consumer_group

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_iothub_consumer_group ?id ?timeouts
    ~eventhub_endpoint_name ~iothub_name ~name ~resource_group_name
    () : azurerm_iothub_consumer_group =
  {
    eventhub_endpoint_name;
    id;
    iothub_name;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  tf_name : string;
  eventhub_endpoint_name : string prop;
  id : string prop;
  iothub_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~eventhub_endpoint_name ~iothub_name ~name
    ~resource_group_name __id =
  let __type = "azurerm_iothub_consumer_group" in
  let __attrs =
    ({
       tf_name = __id;
       eventhub_endpoint_name =
         Prop.computed __type __id "eventhub_endpoint_name";
       id = Prop.computed __type __id "id";
       iothub_name = Prop.computed __type __id "iothub_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_consumer_group
        (azurerm_iothub_consumer_group ?id ?timeouts
           ~eventhub_endpoint_name ~iothub_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~eventhub_endpoint_name
    ~iothub_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~eventhub_endpoint_name ~iothub_name ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

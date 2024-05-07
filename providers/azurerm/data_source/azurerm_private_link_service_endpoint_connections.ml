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

type private_endpoint_connections = {
  action_required : string prop;
  connection_id : string prop;
  connection_name : string prop;
  description : string prop;
  private_endpoint_id : string prop;
  private_endpoint_name : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_endpoint_connections) -> ()

let yojson_of_private_endpoint_connections =
  (function
   | {
       action_required = v_action_required;
       connection_id = v_connection_id;
       connection_name = v_connection_name;
       description = v_description;
       private_endpoint_id = v_private_endpoint_id;
       private_endpoint_name = v_private_endpoint_name;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_endpoint_name
         in
         ("private_endpoint_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_endpoint_id
         in
         ("private_endpoint_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_name
         in
         ("connection_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connection_id in
         ("connection_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_action_required
         in
         ("action_required", arg) :: bnds
       in
       `Assoc bnds
    : private_endpoint_connections ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_endpoint_connections

[@@@deriving.end]

type azurerm_private_link_service_endpoint_connections = {
  id : string prop option; [@option]
  resource_group_name : string prop;
  service_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_private_link_service_endpoint_connections) -> ()

let yojson_of_azurerm_private_link_service_endpoint_connections =
  (function
   | {
       id = v_id;
       resource_group_name = v_resource_group_name;
       service_id = v_service_id;
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
         let arg = yojson_of_prop yojson_of_string v_service_id in
         ("service_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
    : azurerm_private_link_service_endpoint_connections ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_private_link_service_endpoint_connections

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_private_link_service_endpoint_connections ?id ?timeouts
    ~resource_group_name ~service_id () :
    azurerm_private_link_service_endpoint_connections =
  { id; resource_group_name; service_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  private_endpoint_connections :
    private_endpoint_connections list prop;
  resource_group_name : string prop;
  service_id : string prop;
  service_name : string prop;
}

let make ?id ?timeouts ~resource_group_name ~service_id __id =
  let __type = "azurerm_private_link_service_endpoint_connections" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       private_endpoint_connections =
         Prop.computed __type __id "private_endpoint_connections";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_id = Prop.computed __type __id "service_id";
       service_name = Prop.computed __type __id "service_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_link_service_endpoint_connections
        (azurerm_private_link_service_endpoint_connections ?id
           ?timeouts ~resource_group_name ~service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~resource_group_name
    ~service_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~resource_group_name ~service_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

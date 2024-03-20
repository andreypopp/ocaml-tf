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

type connections = {
  action_required : string prop;
  description : string prop;
  name : string prop;
  status : string prop;
  workspace_private_endpoint_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connections) -> ()

let yojson_of_connections =
  (function
   | {
       action_required = v_action_required;
       description = v_description;
       name = v_name;
       status = v_status;
       workspace_private_endpoint_id =
         v_workspace_private_endpoint_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_workspace_private_endpoint_id
         in
         ("workspace_private_endpoint_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_action_required
         in
         ("action_required", arg) :: bnds
       in
       `Assoc bnds
    : connections -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connections

[@@@deriving.end]

type azurerm_databricks_workspace_private_endpoint_connection = {
  id : string prop option; [@option]
  private_endpoint_id : string prop;
  workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_databricks_workspace_private_endpoint_connection) ->
  ()

let yojson_of_azurerm_databricks_workspace_private_endpoint_connection
    =
  (function
   | {
       id = v_id;
       private_endpoint_id = v_private_endpoint_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_private_endpoint_id
         in
         ("private_endpoint_id", arg) :: bnds
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
    : azurerm_databricks_workspace_private_endpoint_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_databricks_workspace_private_endpoint_connection

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_databricks_workspace_private_endpoint_connection ?id
    ?timeouts ~private_endpoint_id ~workspace_id () :
    azurerm_databricks_workspace_private_endpoint_connection =
  { id; private_endpoint_id; workspace_id; timeouts }

type t = {
  connections : connections list prop;
  id : string prop;
  private_endpoint_id : string prop;
  workspace_id : string prop;
}

let make ?id ?timeouts ~private_endpoint_id ~workspace_id __id =
  let __type =
    "azurerm_databricks_workspace_private_endpoint_connection"
  in
  let __attrs =
    ({
       connections = Prop.computed __type __id "connections";
       id = Prop.computed __type __id "id";
       private_endpoint_id =
         Prop.computed __type __id "private_endpoint_id";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_databricks_workspace_private_endpoint_connection
        (azurerm_databricks_workspace_private_endpoint_connection ?id
           ?timeouts ~private_endpoint_id ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~private_endpoint_id
    ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~private_endpoint_id ~workspace_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

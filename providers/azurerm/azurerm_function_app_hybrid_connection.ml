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

type azurerm_function_app_hybrid_connection = {
  function_app_id : string prop;
  hostname : string prop;
  id : string prop option; [@option]
  port : float prop;
  relay_id : string prop;
  send_key_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_function_app_hybrid_connection) -> ()

let yojson_of_azurerm_function_app_hybrid_connection =
  (function
   | {
       function_app_id = v_function_app_id;
       hostname = v_hostname;
       id = v_id;
       port = v_port;
       relay_id = v_relay_id;
       send_key_name = v_send_key_name;
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
         match v_send_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "send_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_relay_id in
         ("relay_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_function_app_id
         in
         ("function_app_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_function_app_hybrid_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_function_app_hybrid_connection

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_function_app_hybrid_connection ?id ?send_key_name
    ?timeouts ~function_app_id ~hostname ~port ~relay_id () :
    azurerm_function_app_hybrid_connection =
  {
    function_app_id;
    hostname;
    id;
    port;
    relay_id;
    send_key_name;
    timeouts;
  }

type t = {
  tf_name : string;
  function_app_id : string prop;
  hostname : string prop;
  id : string prop;
  namespace_name : string prop;
  port : float prop;
  relay_id : string prop;
  relay_name : string prop;
  send_key_name : string prop;
  send_key_value : string prop;
  service_bus_namespace : string prop;
  service_bus_suffix : string prop;
}

let make ?id ?send_key_name ?timeouts ~function_app_id ~hostname
    ~port ~relay_id __id =
  let __type = "azurerm_function_app_hybrid_connection" in
  let __attrs =
    ({
       tf_name = __id;
       function_app_id = Prop.computed __type __id "function_app_id";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       namespace_name = Prop.computed __type __id "namespace_name";
       port = Prop.computed __type __id "port";
       relay_id = Prop.computed __type __id "relay_id";
       relay_name = Prop.computed __type __id "relay_name";
       send_key_name = Prop.computed __type __id "send_key_name";
       send_key_value = Prop.computed __type __id "send_key_value";
       service_bus_namespace =
         Prop.computed __type __id "service_bus_namespace";
       service_bus_suffix =
         Prop.computed __type __id "service_bus_suffix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_function_app_hybrid_connection
        (azurerm_function_app_hybrid_connection ?id ?send_key_name
           ?timeouts ~function_app_id ~hostname ~port ~relay_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?send_key_name ?timeouts ~function_app_id
    ~hostname ~port ~relay_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?send_key_name ?timeouts ~function_app_id ~hostname
      ~port ~relay_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

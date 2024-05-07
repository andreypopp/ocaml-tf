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

type azurerm_signalr_service = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_signalr_service) -> ()

let yojson_of_azurerm_signalr_service =
  (function
   | {
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_signalr_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_signalr_service

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_signalr_service ?id ?timeouts ~name ~resource_group_name
    () : azurerm_signalr_service =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  aad_auth_enabled : bool prop;
  hostname : string prop;
  id : string prop;
  ip_address : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  name : string prop;
  primary_access_key : string prop;
  primary_connection_string : string prop;
  public_network_access_enabled : bool prop;
  public_port : float prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  secondary_connection_string : string prop;
  server_port : float prop;
  serverless_connection_timeout_in_seconds : float prop;
  tags : (string * string) list prop;
  tls_client_cert_enabled : bool prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_signalr_service" in
  let __attrs =
    ({
       tf_name = __id;
       aad_auth_enabled =
         Prop.computed __type __id "aad_auth_enabled";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       local_auth_enabled =
         Prop.computed __type __id "local_auth_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       public_port = Prop.computed __type __id "public_port";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       server_port = Prop.computed __type __id "server_port";
       serverless_connection_timeout_in_seconds =
         Prop.computed __type __id
           "serverless_connection_timeout_in_seconds";
       tags = Prop.computed __type __id "tags";
       tls_client_cert_enabled =
         Prop.computed __type __id "tls_client_cert_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_signalr_service
        (azurerm_signalr_service ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

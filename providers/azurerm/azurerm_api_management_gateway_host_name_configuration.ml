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

type azurerm_api_management_gateway_host_name_configuration = {
  api_management_id : string prop;
  certificate_id : string prop;
  gateway_name : string prop;
  host_name : string prop;
  http2_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  request_client_certificate_enabled : bool prop option; [@option]
  tls10_enabled : bool prop option; [@option]
  tls11_enabled : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_api_management_gateway_host_name_configuration) ->
  ()

let yojson_of_azurerm_api_management_gateway_host_name_configuration
    =
  (function
   | {
       api_management_id = v_api_management_id;
       certificate_id = v_certificate_id;
       gateway_name = v_gateway_name;
       host_name = v_host_name;
       http2_enabled = v_http2_enabled;
       id = v_id;
       name = v_name;
       request_client_certificate_enabled =
         v_request_client_certificate_enabled;
       tls10_enabled = v_tls10_enabled;
       tls11_enabled = v_tls11_enabled;
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
         match v_tls11_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls11_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tls10_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls10_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_client_certificate_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "request_client_certificate_enabled", arg in
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
         match v_http2_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "http2_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway_name in
         ("gateway_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_id
         in
         ("certificate_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_id
         in
         ("api_management_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_gateway_host_name_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_api_management_gateway_host_name_configuration

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_gateway_host_name_configuration
    ?http2_enabled ?id ?request_client_certificate_enabled
    ?tls10_enabled ?tls11_enabled ?timeouts ~api_management_id
    ~certificate_id ~gateway_name ~host_name ~name () :
    azurerm_api_management_gateway_host_name_configuration =
  {
    api_management_id;
    certificate_id;
    gateway_name;
    host_name;
    http2_enabled;
    id;
    name;
    request_client_certificate_enabled;
    tls10_enabled;
    tls11_enabled;
    timeouts;
  }

type t = {
  tf_name : string;
  api_management_id : string prop;
  certificate_id : string prop;
  gateway_name : string prop;
  host_name : string prop;
  http2_enabled : bool prop;
  id : string prop;
  name : string prop;
  request_client_certificate_enabled : bool prop;
  tls10_enabled : bool prop;
  tls11_enabled : bool prop;
}

let make ?http2_enabled ?id ?request_client_certificate_enabled
    ?tls10_enabled ?tls11_enabled ?timeouts ~api_management_id
    ~certificate_id ~gateway_name ~host_name ~name __id =
  let __type =
    "azurerm_api_management_gateway_host_name_configuration"
  in
  let __attrs =
    ({
       tf_name = __id;
       api_management_id =
         Prop.computed __type __id "api_management_id";
       certificate_id = Prop.computed __type __id "certificate_id";
       gateway_name = Prop.computed __type __id "gateway_name";
       host_name = Prop.computed __type __id "host_name";
       http2_enabled = Prop.computed __type __id "http2_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       request_client_certificate_enabled =
         Prop.computed __type __id
           "request_client_certificate_enabled";
       tls10_enabled = Prop.computed __type __id "tls10_enabled";
       tls11_enabled = Prop.computed __type __id "tls11_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_gateway_host_name_configuration
        (azurerm_api_management_gateway_host_name_configuration
           ?http2_enabled ?id ?request_client_certificate_enabled
           ?tls10_enabled ?tls11_enabled ?timeouts ~api_management_id
           ~certificate_id ~gateway_name ~host_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?http2_enabled ?id
    ?request_client_certificate_enabled ?tls10_enabled ?tls11_enabled
    ?timeouts ~api_management_id ~certificate_id ~gateway_name
    ~host_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?http2_enabled ?id ?request_client_certificate_enabled
      ?tls10_enabled ?tls11_enabled ?timeouts ~api_management_id
      ~certificate_id ~gateway_name ~host_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_signalr_shared_private_link_resource = {
  id : string prop option; [@option]
  name : string prop;
  request_message : string prop option; [@option]
  signalr_service_id : string prop;
  sub_resource_name : string prop;
  target_resource_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_signalr_shared_private_link_resource) -> ()

let yojson_of_azurerm_signalr_shared_private_link_resource =
  (function
   | {
       id = v_id;
       name = v_name;
       request_message = v_request_message;
       signalr_service_id = v_signalr_service_id;
       sub_resource_name = v_sub_resource_name;
       target_resource_id = v_target_resource_id;
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
           yojson_of_prop yojson_of_string v_target_resource_id
         in
         ("target_resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sub_resource_name
         in
         ("sub_resource_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_signalr_service_id
         in
         ("signalr_service_id", arg) :: bnds
       in
       let bnds =
         match v_request_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_message", arg in
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
       `Assoc bnds
    : azurerm_signalr_shared_private_link_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_signalr_shared_private_link_resource

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_signalr_shared_private_link_resource ?id ?request_message
    ?timeouts ~name ~signalr_service_id ~sub_resource_name
    ~target_resource_id () :
    azurerm_signalr_shared_private_link_resource =
  {
    id;
    name;
    request_message;
    signalr_service_id;
    sub_resource_name;
    target_resource_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  request_message : string prop;
  signalr_service_id : string prop;
  status : string prop;
  sub_resource_name : string prop;
  target_resource_id : string prop;
}

let make ?id ?request_message ?timeouts ~name ~signalr_service_id
    ~sub_resource_name ~target_resource_id __id =
  let __type = "azurerm_signalr_shared_private_link_resource" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       request_message = Prop.computed __type __id "request_message";
       signalr_service_id =
         Prop.computed __type __id "signalr_service_id";
       status = Prop.computed __type __id "status";
       sub_resource_name =
         Prop.computed __type __id "sub_resource_name";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_signalr_shared_private_link_resource
        (azurerm_signalr_shared_private_link_resource ?id
           ?request_message ?timeouts ~name ~signalr_service_id
           ~sub_resource_name ~target_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?request_message ?timeouts ~name
    ~signalr_service_id ~sub_resource_name ~target_resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?request_message ?timeouts ~name ~signalr_service_id
      ~sub_resource_name ~target_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

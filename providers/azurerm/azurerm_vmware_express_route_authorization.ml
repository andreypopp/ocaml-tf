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

type azurerm_vmware_express_route_authorization = {
  id : string prop option; [@option]
  name : string prop;
  private_cloud_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_vmware_express_route_authorization) -> ()

let yojson_of_azurerm_vmware_express_route_authorization =
  (function
   | {
       id = v_id;
       name = v_name;
       private_cloud_id = v_private_cloud_id;
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
           yojson_of_prop yojson_of_string v_private_cloud_id
         in
         ("private_cloud_id", arg) :: bnds
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
    : azurerm_vmware_express_route_authorization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_vmware_express_route_authorization

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_vmware_express_route_authorization ?id ?timeouts ~name
    ~private_cloud_id () : azurerm_vmware_express_route_authorization
    =
  { id; name; private_cloud_id; timeouts }

type t = {
  tf_name : string;
  express_route_authorization_id : string prop;
  express_route_authorization_key : string prop;
  id : string prop;
  name : string prop;
  private_cloud_id : string prop;
}

let make ?id ?timeouts ~name ~private_cloud_id __id =
  let __type = "azurerm_vmware_express_route_authorization" in
  let __attrs =
    ({
       tf_name = __id;
       express_route_authorization_id =
         Prop.computed __type __id "express_route_authorization_id";
       express_route_authorization_key =
         Prop.computed __type __id "express_route_authorization_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       private_cloud_id =
         Prop.computed __type __id "private_cloud_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_vmware_express_route_authorization
        (azurerm_vmware_express_route_authorization ?id ?timeouts
           ~name ~private_cloud_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~private_cloud_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~private_cloud_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

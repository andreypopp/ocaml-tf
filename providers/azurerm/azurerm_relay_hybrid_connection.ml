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

type azurerm_relay_hybrid_connection = {
  id : string prop option; [@option]
  name : string prop;
  relay_namespace_name : string prop;
  requires_client_authorization : bool prop option; [@option]
  resource_group_name : string prop;
  user_metadata : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_relay_hybrid_connection) -> ()

let yojson_of_azurerm_relay_hybrid_connection =
  (function
   | {
       id = v_id;
       name = v_name;
       relay_namespace_name = v_relay_namespace_name;
       requires_client_authorization =
         v_requires_client_authorization;
       resource_group_name = v_resource_group_name;
       user_metadata = v_user_metadata;
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
         match v_user_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_metadata", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_requires_client_authorization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "requires_client_authorization", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_relay_namespace_name
         in
         ("relay_namespace_name", arg) :: bnds
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
    : azurerm_relay_hybrid_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_relay_hybrid_connection

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_relay_hybrid_connection ?id
    ?requires_client_authorization ?user_metadata ?timeouts ~name
    ~relay_namespace_name ~resource_group_name () :
    azurerm_relay_hybrid_connection =
  {
    id;
    name;
    relay_namespace_name;
    requires_client_authorization;
    resource_group_name;
    user_metadata;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  relay_namespace_name : string prop;
  requires_client_authorization : bool prop;
  resource_group_name : string prop;
  user_metadata : string prop;
}

let make ?id ?requires_client_authorization ?user_metadata ?timeouts
    ~name ~relay_namespace_name ~resource_group_name __id =
  let __type = "azurerm_relay_hybrid_connection" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       relay_namespace_name =
         Prop.computed __type __id "relay_namespace_name";
       requires_client_authorization =
         Prop.computed __type __id "requires_client_authorization";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       user_metadata = Prop.computed __type __id "user_metadata";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_relay_hybrid_connection
        (azurerm_relay_hybrid_connection ?id
           ?requires_client_authorization ?user_metadata ?timeouts
           ~name ~relay_namespace_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?requires_client_authorization
    ?user_metadata ?timeouts ~name ~relay_namespace_name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?requires_client_authorization ?user_metadata ?timeouts
      ~name ~relay_namespace_name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_relay_hybrid_connection_authorization_rule = {
  hybrid_connection_name : string prop;
  id : string prop option; [@option]
  listen : bool prop option; [@option]
  manage : bool prop option; [@option]
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  send : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_relay_hybrid_connection_authorization_rule) -> ()

let yojson_of_azurerm_relay_hybrid_connection_authorization_rule =
  (function
   | {
       hybrid_connection_name = v_hybrid_connection_name;
       id = v_id;
       listen = v_listen;
       manage = v_manage;
       name = v_name;
       namespace_name = v_namespace_name;
       resource_group_name = v_resource_group_name;
       send = v_send;
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
         match v_send with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_namespace_name
         in
         ("namespace_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_manage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "manage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_listen with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "listen", arg in
             bnd :: bnds
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
           yojson_of_prop yojson_of_string v_hybrid_connection_name
         in
         ("hybrid_connection_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_relay_hybrid_connection_authorization_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_relay_hybrid_connection_authorization_rule

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_relay_hybrid_connection_authorization_rule ?id ?listen
    ?manage ?send ?timeouts ~hybrid_connection_name ~name
    ~namespace_name ~resource_group_name () :
    azurerm_relay_hybrid_connection_authorization_rule =
  {
    hybrid_connection_name;
    id;
    listen;
    manage;
    name;
    namespace_name;
    resource_group_name;
    send;
    timeouts;
  }

type t = {
  hybrid_connection_name : string prop;
  id : string prop;
  listen : bool prop;
  manage : bool prop;
  name : string prop;
  namespace_name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  send : bool prop;
}

let make ?id ?listen ?manage ?send ?timeouts ~hybrid_connection_name
    ~name ~namespace_name ~resource_group_name __id =
  let __type =
    "azurerm_relay_hybrid_connection_authorization_rule"
  in
  let __attrs =
    ({
       hybrid_connection_name =
         Prop.computed __type __id "hybrid_connection_name";
       id = Prop.computed __type __id "id";
       listen = Prop.computed __type __id "listen";
       manage = Prop.computed __type __id "manage";
       name = Prop.computed __type __id "name";
       namespace_name = Prop.computed __type __id "namespace_name";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       primary_key = Prop.computed __type __id "primary_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       secondary_key = Prop.computed __type __id "secondary_key";
       send = Prop.computed __type __id "send";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_relay_hybrid_connection_authorization_rule
        (azurerm_relay_hybrid_connection_authorization_rule ?id
           ?listen ?manage ?send ?timeouts ~hybrid_connection_name
           ~name ~namespace_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?listen ?manage ?send ?timeouts
    ~hybrid_connection_name ~name ~namespace_name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?listen ?manage ?send ?timeouts ~hybrid_connection_name
      ~name ~namespace_name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

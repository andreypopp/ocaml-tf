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

type azurerm_servicebus_namespace_authorization_rule = {
  id : string prop option; [@option]
  listen : bool prop option; [@option]
  manage : bool prop option; [@option]
  name : string prop;
  namespace_id : string prop;
  send : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_servicebus_namespace_authorization_rule) -> ()

let yojson_of_azurerm_servicebus_namespace_authorization_rule =
  (function
   | {
       id = v_id;
       listen = v_listen;
       manage = v_manage;
       name = v_name;
       namespace_id = v_namespace_id;
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
         let arg = yojson_of_prop yojson_of_string v_namespace_id in
         ("namespace_id", arg) :: bnds
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
       `Assoc bnds
    : azurerm_servicebus_namespace_authorization_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_servicebus_namespace_authorization_rule

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_servicebus_namespace_authorization_rule ?id ?listen
    ?manage ?send ?timeouts ~name ~namespace_id () :
    azurerm_servicebus_namespace_authorization_rule =
  { id; listen; manage; name; namespace_id; send; timeouts }

type t = {
  id : string prop;
  listen : bool prop;
  manage : bool prop;
  name : string prop;
  namespace_id : string prop;
  primary_connection_string : string prop;
  primary_connection_string_alias : string prop;
  primary_key : string prop;
  secondary_connection_string : string prop;
  secondary_connection_string_alias : string prop;
  secondary_key : string prop;
  send : bool prop;
}

let make ?id ?listen ?manage ?send ?timeouts ~name ~namespace_id __id
    =
  let __type = "azurerm_servicebus_namespace_authorization_rule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       listen = Prop.computed __type __id "listen";
       manage = Prop.computed __type __id "manage";
       name = Prop.computed __type __id "name";
       namespace_id = Prop.computed __type __id "namespace_id";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       primary_connection_string_alias =
         Prop.computed __type __id "primary_connection_string_alias";
       primary_key = Prop.computed __type __id "primary_key";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       secondary_connection_string_alias =
         Prop.computed __type __id
           "secondary_connection_string_alias";
       secondary_key = Prop.computed __type __id "secondary_key";
       send = Prop.computed __type __id "send";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_namespace_authorization_rule
        (azurerm_servicebus_namespace_authorization_rule ?id ?listen
           ?manage ?send ?timeouts ~name ~namespace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?listen ?manage ?send ?timeouts ~name
    ~namespace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?listen ?manage ?send ?timeouts ~name ~namespace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

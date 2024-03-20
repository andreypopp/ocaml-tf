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

type azurerm_servicebus_topic_authorization_rule = {
  id : string prop option; [@option]
  name : string prop;
  namespace_name : string prop option; [@option]
  queue_name : string prop option; [@option]
  resource_group_name : string prop option; [@option]
  topic_id : string prop option; [@option]
  topic_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_servicebus_topic_authorization_rule) -> ()

let yojson_of_azurerm_servicebus_topic_authorization_rule =
  (function
   | {
       id = v_id;
       name = v_name;
       namespace_name = v_namespace_name;
       queue_name = v_queue_name;
       resource_group_name = v_resource_group_name;
       topic_id = v_topic_id;
       topic_name = v_topic_name;
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
         match v_topic_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_topic_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_queue_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "queue_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace_name", arg in
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
    : azurerm_servicebus_topic_authorization_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_servicebus_topic_authorization_rule

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_servicebus_topic_authorization_rule ?id ?namespace_name
    ?queue_name ?resource_group_name ?topic_id ?topic_name ?timeouts
    ~name () : azurerm_servicebus_topic_authorization_rule =
  {
    id;
    name;
    namespace_name;
    queue_name;
    resource_group_name;
    topic_id;
    topic_name;
    timeouts;
  }

type t = {
  id : string prop;
  listen : bool prop;
  manage : bool prop;
  name : string prop;
  namespace_name : string prop;
  primary_connection_string : string prop;
  primary_connection_string_alias : string prop;
  primary_key : string prop;
  queue_name : string prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_connection_string_alias : string prop;
  secondary_key : string prop;
  send : bool prop;
  topic_id : string prop;
  topic_name : string prop;
}

let make ?id ?namespace_name ?queue_name ?resource_group_name
    ?topic_id ?topic_name ?timeouts ~name __id =
  let __type = "azurerm_servicebus_topic_authorization_rule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       listen = Prop.computed __type __id "listen";
       manage = Prop.computed __type __id "manage";
       name = Prop.computed __type __id "name";
       namespace_name = Prop.computed __type __id "namespace_name";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       primary_connection_string_alias =
         Prop.computed __type __id "primary_connection_string_alias";
       primary_key = Prop.computed __type __id "primary_key";
       queue_name = Prop.computed __type __id "queue_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       secondary_connection_string_alias =
         Prop.computed __type __id
           "secondary_connection_string_alias";
       secondary_key = Prop.computed __type __id "secondary_key";
       send = Prop.computed __type __id "send";
       topic_id = Prop.computed __type __id "topic_id";
       topic_name = Prop.computed __type __id "topic_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_topic_authorization_rule
        (azurerm_servicebus_topic_authorization_rule ?id
           ?namespace_name ?queue_name ?resource_group_name ?topic_id
           ?topic_name ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace_name ?queue_name
    ?resource_group_name ?topic_id ?topic_name ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?namespace_name ?queue_name ?resource_group_name
      ?topic_id ?topic_name ?timeouts ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

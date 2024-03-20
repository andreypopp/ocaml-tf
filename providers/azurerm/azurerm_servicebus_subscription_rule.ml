(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type correlation_filter = {
  content_type : string prop option; [@option]
  correlation_id : string prop option; [@option]
  label : string prop option; [@option]
  message_id : string prop option; [@option]
  properties : (string * string prop) list option; [@option]
  reply_to : string prop option; [@option]
  reply_to_session_id : string prop option; [@option]
  session_id : string prop option; [@option]
  to_ : string prop option; [@option] [@key "to"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : correlation_filter) -> ()

let yojson_of_correlation_filter =
  (function
   | {
       content_type = v_content_type;
       correlation_id = v_correlation_id;
       label = v_label;
       message_id = v_message_id;
       properties = v_properties;
       reply_to = v_reply_to;
       reply_to_session_id = v_reply_to_session_id;
       session_id = v_session_id;
       to_ = v_to_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_to_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "to", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reply_to_session_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reply_to_session_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reply_to with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reply_to", arg in
             bnd :: bnds
       in
       let bnds =
         match v_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "properties", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_correlation_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "correlation_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : correlation_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_correlation_filter

[@@@deriving.end]

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

type azurerm_servicebus_subscription_rule = {
  action : string prop option; [@option]
  filter_type : string prop;
  id : string prop option; [@option]
  name : string prop;
  sql_filter : string prop option; [@option]
  subscription_id : string prop;
  correlation_filter : correlation_filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_servicebus_subscription_rule) -> ()

let yojson_of_azurerm_servicebus_subscription_rule =
  (function
   | {
       action = v_action;
       filter_type = v_filter_type;
       id = v_id;
       name = v_name;
       sql_filter = v_sql_filter;
       subscription_id = v_subscription_id;
       correlation_filter = v_correlation_filter;
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
           yojson_of_list yojson_of_correlation_filter
             v_correlation_filter
         in
         ("correlation_filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subscription_id
         in
         ("subscription_id", arg) :: bnds
       in
       let bnds =
         match v_sql_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_filter", arg in
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
         let arg = yojson_of_prop yojson_of_string v_filter_type in
         ("filter_type", arg) :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_servicebus_subscription_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_servicebus_subscription_rule

[@@@deriving.end]

let correlation_filter ?content_type ?correlation_id ?label
    ?message_id ?properties ?reply_to ?reply_to_session_id
    ?session_id ?to_ () : correlation_filter =
  {
    content_type;
    correlation_id;
    label;
    message_id;
    properties;
    reply_to;
    reply_to_session_id;
    session_id;
    to_;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_servicebus_subscription_rule ?action ?id ?sql_filter
    ?timeouts ~filter_type ~name ~subscription_id ~correlation_filter
    () : azurerm_servicebus_subscription_rule =
  {
    action;
    filter_type;
    id;
    name;
    sql_filter;
    subscription_id;
    correlation_filter;
    timeouts;
  }

type t = {
  action : string prop;
  filter_type : string prop;
  id : string prop;
  name : string prop;
  sql_filter : string prop;
  sql_filter_compatibility_level : float prop;
  subscription_id : string prop;
}

let make ?action ?id ?sql_filter ?timeouts ~filter_type ~name
    ~subscription_id ~correlation_filter __id =
  let __type = "azurerm_servicebus_subscription_rule" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       filter_type = Prop.computed __type __id "filter_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       sql_filter = Prop.computed __type __id "sql_filter";
       sql_filter_compatibility_level =
         Prop.computed __type __id "sql_filter_compatibility_level";
       subscription_id = Prop.computed __type __id "subscription_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_subscription_rule
        (azurerm_servicebus_subscription_rule ?action ?id ?sql_filter
           ?timeouts ~filter_type ~name ~subscription_id
           ~correlation_filter ());
    attrs = __attrs;
  }

let register ?tf_module ?action ?id ?sql_filter ?timeouts
    ~filter_type ~name ~subscription_id ~correlation_filter __id =
  let (r : _ Tf_core.resource) =
    make ?action ?id ?sql_filter ?timeouts ~filter_type ~name
      ~subscription_id ~correlation_filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type correlation_filter = {
  content_type : string prop option; [@option]  (** content_type *)
  correlation_id : string prop option; [@option]
      (** correlation_id *)
  label : string prop option; [@option]  (** label *)
  message_id : string prop option; [@option]  (** message_id *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
  reply_to : string prop option; [@option]  (** reply_to *)
  reply_to_session_id : string prop option; [@option]
      (** reply_to_session_id *)
  session_id : string prop option; [@option]  (** session_id *)
  to_ : string prop option; [@option] [@key "to"]  (** to *)
}
[@@deriving yojson_of]
(** correlation_filter *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_servicebus_subscription_rule = {
  action : string prop option; [@option]  (** action *)
  filter_type : string prop;  (** filter_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  sql_filter : string prop option; [@option]  (** sql_filter *)
  subscription_id : string prop;  (** subscription_id *)
  correlation_filter : correlation_filter list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_subscription_rule *)

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

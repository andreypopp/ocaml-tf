(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type input_mapping_default_values = {
  data_version : string prop option; [@option]
  event_type : string prop option; [@option]
  subject : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_mapping_default_values) -> ()

let yojson_of_input_mapping_default_values =
  (function
   | {
       data_version = v_data_version;
       event_type = v_event_type;
       subject = v_subject;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_mapping_default_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_mapping_default_values

[@@@deriving.end]

type input_mapping_fields = {
  data_version : string prop option; [@option]
  event_time : string prop option; [@option]
  event_type : string prop option; [@option]
  id : string prop option; [@option]
  subject : string prop option; [@option]
  topic : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_mapping_fields) -> ()

let yojson_of_input_mapping_fields =
  (function
   | {
       data_version = v_data_version;
       event_time = v_event_time;
       event_type = v_event_type;
       id = v_id;
       subject = v_subject;
       topic = v_topic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_topic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject", arg in
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
         match v_event_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_mapping_fields -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_mapping_fields

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

type inbound_ip_rule = {
  action : string prop;
  ip_mask : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inbound_ip_rule) -> ()

let yojson_of_inbound_ip_rule =
  (function
   | { action = v_action; ip_mask = v_ip_mask } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_mask in
         ("ip_mask", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : inbound_ip_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inbound_ip_rule

[@@@deriving.end]

type azurerm_eventgrid_domain = {
  auto_create_topic_with_first_subscription : bool prop option;
      [@option]
  auto_delete_topic_with_last_subscription : bool prop option;
      [@option]
  id : string prop option; [@option]
  inbound_ip_rule : inbound_ip_rule list option; [@option]
  input_schema : string prop option; [@option]
  local_auth_enabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  identity : identity list;
  input_mapping_default_values : input_mapping_default_values list;
  input_mapping_fields : input_mapping_fields list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_eventgrid_domain) -> ()

let yojson_of_azurerm_eventgrid_domain =
  (function
   | {
       auto_create_topic_with_first_subscription =
         v_auto_create_topic_with_first_subscription;
       auto_delete_topic_with_last_subscription =
         v_auto_delete_topic_with_last_subscription;
       id = v_id;
       inbound_ip_rule = v_inbound_ip_rule;
       input_schema = v_input_schema;
       local_auth_enabled = v_local_auth_enabled;
       location = v_location;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       identity = v_identity;
       input_mapping_default_values = v_input_mapping_default_values;
       input_mapping_fields = v_input_mapping_fields;
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
           yojson_of_list yojson_of_input_mapping_fields
             v_input_mapping_fields
         in
         ("input_mapping_fields", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_input_mapping_default_values
             v_input_mapping_default_values
         in
         ("input_mapping_default_values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_local_auth_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_auth_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_input_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inbound_ip_rule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_inbound_ip_rule v in
             let bnd = "inbound_ip_rule", arg in
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
         match v_auto_delete_topic_with_last_subscription with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "auto_delete_topic_with_last_subscription", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_auto_create_topic_with_first_subscription with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "auto_create_topic_with_first_subscription", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_eventgrid_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_eventgrid_domain

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let input_mapping_default_values ?data_version ?event_type ?subject
    () : input_mapping_default_values =
  { data_version; event_type; subject }

let input_mapping_fields ?data_version ?event_time ?event_type ?id
    ?subject ?topic () : input_mapping_fields =
  { data_version; event_time; event_type; id; subject; topic }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_eventgrid_domain
    ?auto_create_topic_with_first_subscription
    ?auto_delete_topic_with_last_subscription ?id ?inbound_ip_rule
    ?input_schema ?local_auth_enabled ?public_network_access_enabled
    ?tags ?(identity = []) ?(input_mapping_default_values = [])
    ?(input_mapping_fields = []) ?timeouts ~location ~name
    ~resource_group_name () : azurerm_eventgrid_domain =
  {
    auto_create_topic_with_first_subscription;
    auto_delete_topic_with_last_subscription;
    id;
    inbound_ip_rule;
    input_schema;
    local_auth_enabled;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    tags;
    identity;
    input_mapping_default_values;
    input_mapping_fields;
    timeouts;
  }

type t = {
  tf_name : string;
  auto_create_topic_with_first_subscription : bool prop;
  auto_delete_topic_with_last_subscription : bool prop;
  endpoint : string prop;
  id : string prop;
  inbound_ip_rule : inbound_ip_rule list prop;
  input_schema : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  name : string prop;
  primary_access_key : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  tags : (string * string) list prop;
}

let make ?auto_create_topic_with_first_subscription
    ?auto_delete_topic_with_last_subscription ?id ?inbound_ip_rule
    ?input_schema ?local_auth_enabled ?public_network_access_enabled
    ?tags ?(identity = []) ?(input_mapping_default_values = [])
    ?(input_mapping_fields = []) ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_eventgrid_domain" in
  let __attrs =
    ({
       tf_name = __id;
       auto_create_topic_with_first_subscription =
         Prop.computed __type __id
           "auto_create_topic_with_first_subscription";
       auto_delete_topic_with_last_subscription =
         Prop.computed __type __id
           "auto_delete_topic_with_last_subscription";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       inbound_ip_rule = Prop.computed __type __id "inbound_ip_rule";
       input_schema = Prop.computed __type __id "input_schema";
       local_auth_enabled =
         Prop.computed __type __id "local_auth_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventgrid_domain
        (azurerm_eventgrid_domain
           ?auto_create_topic_with_first_subscription
           ?auto_delete_topic_with_last_subscription ?id
           ?inbound_ip_rule ?input_schema ?local_auth_enabled
           ?public_network_access_enabled ?tags ~identity
           ~input_mapping_default_values ~input_mapping_fields
           ?timeouts ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_create_topic_with_first_subscription
    ?auto_delete_topic_with_last_subscription ?id ?inbound_ip_rule
    ?input_schema ?local_auth_enabled ?public_network_access_enabled
    ?tags ?(identity = []) ?(input_mapping_default_values = [])
    ?(input_mapping_fields = []) ?timeouts ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?auto_create_topic_with_first_subscription
      ?auto_delete_topic_with_last_subscription ?id ?inbound_ip_rule
      ?input_schema ?local_auth_enabled
      ?public_network_access_enabled ?tags ~identity
      ~input_mapping_default_values ~input_mapping_fields ?timeouts
      ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type input_mapping_default_values = {
  data_version : string prop option; [@option]  (** data_version *)
  event_type : string prop option; [@option]  (** event_type *)
  subject : string prop option; [@option]  (** subject *)
}
[@@deriving yojson_of]
(** input_mapping_default_values *)

type input_mapping_fields = {
  data_version : string prop option; [@option]  (** data_version *)
  event_time : string prop option; [@option]  (** event_time *)
  event_type : string prop option; [@option]  (** event_type *)
  id : string prop option; [@option]  (** id *)
  subject : string prop option; [@option]  (** subject *)
  topic : string prop option; [@option]  (** topic *)
}
[@@deriving yojson_of]
(** input_mapping_fields *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type inbound_ip_rule = {
  action : string prop;  (** action *)
  ip_mask : string prop;  (** ip_mask *)
}
[@@deriving yojson_of]

type azurerm_eventgrid_domain = {
  auto_create_topic_with_first_subscription : bool prop option;
      [@option]
      (** auto_create_topic_with_first_subscription *)
  auto_delete_topic_with_last_subscription : bool prop option;
      [@option]
      (** auto_delete_topic_with_last_subscription *)
  id : string prop option; [@option]  (** id *)
  inbound_ip_rule : inbound_ip_rule list option; [@option]
      (** inbound_ip_rule *)
  input_schema : string prop option; [@option]  (** input_schema *)
  local_auth_enabled : bool prop option; [@option]
      (** local_auth_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  input_mapping_default_values : input_mapping_default_values list;
  input_mapping_fields : input_mapping_fields list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain *)

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
    ?tags ?timeouts ~location ~name ~resource_group_name ~identity
    ~input_mapping_default_values ~input_mapping_fields () :
    azurerm_eventgrid_domain =
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
    ?tags ?timeouts ~location ~name ~resource_group_name ~identity
    ~input_mapping_default_values ~input_mapping_fields __id =
  let __type = "azurerm_eventgrid_domain" in
  let __attrs =
    ({
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
           ?public_network_access_enabled ?tags ?timeouts ~location
           ~name ~resource_group_name ~identity
           ~input_mapping_default_values ~input_mapping_fields ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_create_topic_with_first_subscription
    ?auto_delete_topic_with_last_subscription ?id ?inbound_ip_rule
    ?input_schema ?local_auth_enabled ?public_network_access_enabled
    ?tags ?timeouts ~location ~name ~resource_group_name ~identity
    ~input_mapping_default_values ~input_mapping_fields __id =
  let (r : _ Tf_core.resource) =
    make ?auto_create_topic_with_first_subscription
      ?auto_delete_topic_with_last_subscription ?id ?inbound_ip_rule
      ?input_schema ?local_auth_enabled
      ?public_network_access_enabled ?tags ?timeouts ~location ~name
      ~resource_group_name ~identity ~input_mapping_default_values
      ~input_mapping_fields __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

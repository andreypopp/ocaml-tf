(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventgrid_domain__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain__identity *)

type azurerm_eventgrid_domain__input_mapping_default_values = {
  data_version : string prop option; [@option]  (** data_version *)
  event_type : string prop option; [@option]  (** event_type *)
  subject : string prop option; [@option]  (** subject *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain__input_mapping_default_values *)

type azurerm_eventgrid_domain__input_mapping_fields = {
  data_version : string prop option; [@option]  (** data_version *)
  event_time : string prop option; [@option]  (** event_time *)
  event_type : string prop option; [@option]  (** event_type *)
  id : string prop option; [@option]  (** id *)
  subject : string prop option; [@option]  (** subject *)
  topic : string prop option; [@option]  (** topic *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain__input_mapping_fields *)

type azurerm_eventgrid_domain__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain__timeouts *)

type azurerm_eventgrid_domain__inbound_ip_rule = {
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
  inbound_ip_rule :
    azurerm_eventgrid_domain__inbound_ip_rule list option;
      [@option]
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
  identity : azurerm_eventgrid_domain__identity list;
  input_mapping_default_values :
    azurerm_eventgrid_domain__input_mapping_default_values list;
  input_mapping_fields :
    azurerm_eventgrid_domain__input_mapping_fields list;
  timeouts : azurerm_eventgrid_domain__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain *)

type t = {
  auto_create_topic_with_first_subscription : bool prop;
  auto_delete_topic_with_last_subscription : bool prop;
  endpoint : string prop;
  id : string prop;
  inbound_ip_rule :
    azurerm_eventgrid_domain__inbound_ip_rule list prop;
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

let azurerm_eventgrid_domain
    ?auto_create_topic_with_first_subscription
    ?auto_delete_topic_with_last_subscription ?id ?inbound_ip_rule
    ?input_schema ?local_auth_enabled ?public_network_access_enabled
    ?tags ?timeouts ~location ~name ~resource_group_name ~identity
    ~input_mapping_default_values ~input_mapping_fields __resource_id
    =
  let __resource_type = "azurerm_eventgrid_domain" in
  let __resource =
    ({
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
      : azurerm_eventgrid_domain)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventgrid_domain __resource);
  let __resource_attributes =
    ({
       auto_create_topic_with_first_subscription =
         Prop.computed __resource_type __resource_id
           "auto_create_topic_with_first_subscription";
       auto_delete_topic_with_last_subscription =
         Prop.computed __resource_type __resource_id
           "auto_delete_topic_with_last_subscription";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       id = Prop.computed __resource_type __resource_id "id";
       inbound_ip_rule =
         Prop.computed __resource_type __resource_id
           "inbound_ip_rule";
       input_schema =
         Prop.computed __resource_type __resource_id "input_schema";
       local_auth_enabled =
         Prop.computed __resource_type __resource_id
           "local_auth_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       primary_access_key =
         Prop.computed __resource_type __resource_id
           "primary_access_key";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_access_key =
         Prop.computed __resource_type __resource_id
           "secondary_access_key";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

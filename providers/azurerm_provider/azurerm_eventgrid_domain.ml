(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventgrid_domain__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain__identity *)

type azurerm_eventgrid_domain__input_mapping_default_values = {
  data_version : string option; [@option]  (** data_version *)
  event_type : string option; [@option]  (** event_type *)
  subject : string option; [@option]  (** subject *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain__input_mapping_default_values *)

type azurerm_eventgrid_domain__input_mapping_fields = {
  data_version : string option; [@option]  (** data_version *)
  event_time : string option; [@option]  (** event_time *)
  event_type : string option; [@option]  (** event_type *)
  id : string option; [@option]  (** id *)
  subject : string option; [@option]  (** subject *)
  topic : string option; [@option]  (** topic *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain__input_mapping_fields *)

type azurerm_eventgrid_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain__timeouts *)

type azurerm_eventgrid_domain__inbound_ip_rule = {
  action : string;  (** action *)
  ip_mask : string;  (** ip_mask *)
}
[@@deriving yojson_of]

type azurerm_eventgrid_domain = {
  auto_create_topic_with_first_subscription : bool option; [@option]
      (** auto_create_topic_with_first_subscription *)
  auto_delete_topic_with_last_subscription : bool option; [@option]
      (** auto_delete_topic_with_last_subscription *)
  inbound_ip_rule :
    azurerm_eventgrid_domain__inbound_ip_rule list option;
      [@option]
      (** inbound_ip_rule *)
  input_schema : string option; [@option]  (** input_schema *)
  local_auth_enabled : bool option; [@option]
      (** local_auth_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_eventgrid_domain__identity list;
  input_mapping_default_values :
    azurerm_eventgrid_domain__input_mapping_default_values list;
  input_mapping_fields :
    azurerm_eventgrid_domain__input_mapping_fields list;
  timeouts : azurerm_eventgrid_domain__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventgrid_domain *)

let azurerm_eventgrid_domain
    ?auto_create_topic_with_first_subscription
    ?auto_delete_topic_with_last_subscription ?inbound_ip_rule
    ?input_schema ?local_auth_enabled ?public_network_access_enabled
    ?tags ?timeouts ~location ~name ~resource_group_name ~identity
    ~input_mapping_default_values ~input_mapping_fields __resource_id
    =
  let __resource_type = "azurerm_eventgrid_domain" in
  let __resource =
    {
      auto_create_topic_with_first_subscription;
      auto_delete_topic_with_last_subscription;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventgrid_domain __resource);
  ()

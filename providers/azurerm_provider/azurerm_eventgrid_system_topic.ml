(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_eventgrid_system_topic__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_system_topic__identity *)

type azurerm_eventgrid_system_topic__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_system_topic__timeouts *)

type azurerm_eventgrid_system_topic = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  source_arm_resource_id : string;  (** source_arm_resource_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  topic_type : string;  (** topic_type *)
  identity : azurerm_eventgrid_system_topic__identity list;
  timeouts : azurerm_eventgrid_system_topic__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventgrid_system_topic *)

let azurerm_eventgrid_system_topic ?tags ?timeouts ~location ~name
    ~resource_group_name ~source_arm_resource_id ~topic_type
    ~identity __resource_id =
  let __resource_type = "azurerm_eventgrid_system_topic" in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      source_arm_resource_id;
      tags;
      topic_type;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventgrid_system_topic __resource);
  ()

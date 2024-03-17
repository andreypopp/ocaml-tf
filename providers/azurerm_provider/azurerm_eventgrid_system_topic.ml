(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventgrid_system_topic__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_system_topic__identity *)

type azurerm_eventgrid_system_topic__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_system_topic__timeouts *)

type azurerm_eventgrid_system_topic = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_arm_resource_id : string prop;
      (** source_arm_resource_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  topic_type : string prop;  (** topic_type *)
  identity : azurerm_eventgrid_system_topic__identity list;
  timeouts : azurerm_eventgrid_system_topic__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventgrid_system_topic *)

let azurerm_eventgrid_system_topic ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~source_arm_resource_id ~topic_type
    ~identity __resource_id =
  let __resource_type = "azurerm_eventgrid_system_topic" in
  let __resource =
    {
      id;
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

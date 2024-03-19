(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_eventgrid_system_topic = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_arm_resource_id : string prop;
      (** source_arm_resource_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  topic_type : string prop;  (** topic_type *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventgrid_system_topic *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_eventgrid_system_topic ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~source_arm_resource_id ~topic_type
    ~identity () : azurerm_eventgrid_system_topic =
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

type t = {
  id : string prop;
  location : string prop;
  metric_arm_resource_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_arm_resource_id : string prop;
  tags : (string * string) list prop;
  topic_type : string prop;
}

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~source_arm_resource_id ~topic_type
    ~identity __resource_id =
  let __resource_type = "azurerm_eventgrid_system_topic" in
  let __resource =
    azurerm_eventgrid_system_topic ?id ?tags ?timeouts ~location
      ~name ~resource_group_name ~source_arm_resource_id ~topic_type
      ~identity ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventgrid_system_topic __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       metric_arm_resource_id =
         Prop.computed __resource_type __resource_id
           "metric_arm_resource_id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       source_arm_resource_id =
         Prop.computed __resource_type __resource_id
           "source_arm_resource_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       topic_type =
         Prop.computed __resource_type __resource_id "topic_type";
     }
      : t)
  in
  __resource_attributes

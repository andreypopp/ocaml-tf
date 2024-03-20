(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~source_arm_resource_id ~topic_type ~identity __id =
  let __type = "azurerm_eventgrid_system_topic" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       metric_arm_resource_id =
         Prop.computed __type __id "metric_arm_resource_id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source_arm_resource_id =
         Prop.computed __type __id "source_arm_resource_id";
       tags = Prop.computed __type __id "tags";
       topic_type = Prop.computed __type __id "topic_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventgrid_system_topic
        (azurerm_eventgrid_system_topic ?id ?tags ?timeouts ~location
           ~name ~resource_group_name ~source_arm_resource_id
           ~topic_type ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~source_arm_resource_id ~topic_type
    ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~source_arm_resource_id ~topic_type ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

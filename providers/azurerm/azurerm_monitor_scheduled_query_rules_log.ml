(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type criteria__dimension = {
  name : string prop;  (** name *)
  operator : string prop option; [@option]  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** criteria__dimension *)

type criteria = {
  metric_name : string prop;  (** metric_name *)
  dimension : criteria__dimension list;
}
[@@deriving yojson_of]
(** criteria *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_monitor_scheduled_query_rules_log = {
  authorized_resource_ids : string prop list option; [@option]
      (** authorized_resource_ids *)
  data_source_id : string prop;  (** data_source_id *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  criteria : criteria list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_log *)

let criteria__dimension ?operator ~name ~values () :
    criteria__dimension =
  { name; operator; values }

let criteria ~metric_name ~dimension () : criteria =
  { metric_name; dimension }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_scheduled_query_rules_log
    ?authorized_resource_ids ?description ?enabled ?id ?tags
    ?timeouts ~data_source_id ~location ~name ~resource_group_name
    ~criteria () : azurerm_monitor_scheduled_query_rules_log =
  {
    authorized_resource_ids;
    data_source_id;
    description;
    enabled;
    id;
    location;
    name;
    resource_group_name;
    tags;
    criteria;
    timeouts;
  }

type t = {
  authorized_resource_ids : string list prop;
  data_source_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?authorized_resource_ids ?description ?enabled ?id ?tags
    ?timeouts ~data_source_id ~location ~name ~resource_group_name
    ~criteria __id =
  let __type = "azurerm_monitor_scheduled_query_rules_log" in
  let __attrs =
    ({
       authorized_resource_ids =
         Prop.computed __type __id "authorized_resource_ids";
       data_source_id = Prop.computed __type __id "data_source_id";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_scheduled_query_rules_log
        (azurerm_monitor_scheduled_query_rules_log
           ?authorized_resource_ids ?description ?enabled ?id ?tags
           ?timeouts ~data_source_id ~location ~name
           ~resource_group_name ~criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?authorized_resource_ids ?description
    ?enabled ?id ?tags ?timeouts ~data_source_id ~location ~name
    ~resource_group_name ~criteria __id =
  let (r : _ Tf_core.resource) =
    make ?authorized_resource_ids ?description ?enabled ?id ?tags
      ?timeouts ~data_source_id ~location ~name ~resource_group_name
      ~criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

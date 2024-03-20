(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_log_analytics_workspace_table = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  plan : string prop option; [@option]  (** plan *)
  retention_in_days : float prop option; [@option]
      (** retention_in_days *)
  total_retention_in_days : float prop option; [@option]
      (** total_retention_in_days *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_workspace_table *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_workspace_table ?id ?plan
    ?retention_in_days ?total_retention_in_days ?timeouts ~name
    ~workspace_id () : azurerm_log_analytics_workspace_table =
  {
    id;
    name;
    plan;
    retention_in_days;
    total_retention_in_days;
    workspace_id;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  plan : string prop;
  retention_in_days : float prop;
  total_retention_in_days : float prop;
  workspace_id : string prop;
}

let make ?id ?plan ?retention_in_days ?total_retention_in_days
    ?timeouts ~name ~workspace_id __id =
  let __type = "azurerm_log_analytics_workspace_table" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       plan = Prop.computed __type __id "plan";
       retention_in_days =
         Prop.computed __type __id "retention_in_days";
       total_retention_in_days =
         Prop.computed __type __id "total_retention_in_days";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_workspace_table
        (azurerm_log_analytics_workspace_table ?id ?plan
           ?retention_in_days ?total_retention_in_days ?timeouts
           ~name ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?plan ?retention_in_days
    ?total_retention_in_days ?timeouts ~name ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?plan ?retention_in_days ?total_retention_in_days
      ?timeouts ~name ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

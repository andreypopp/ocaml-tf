(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_synapse_role_assignment = {
  id : string prop option; [@option]  (** id *)
  principal_id : string prop;  (** principal_id *)
  principal_type : string prop option; [@option]
      (** principal_type *)
  role_name : string prop;  (** role_name *)
  synapse_spark_pool_id : string prop option; [@option]
      (** synapse_spark_pool_id *)
  synapse_workspace_id : string prop option; [@option]
      (** synapse_workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_role_assignment *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_synapse_role_assignment ?id ?principal_type
    ?synapse_spark_pool_id ?synapse_workspace_id ?timeouts
    ~principal_id ~role_name () : azurerm_synapse_role_assignment =
  {
    id;
    principal_id;
    principal_type;
    role_name;
    synapse_spark_pool_id;
    synapse_workspace_id;
    timeouts;
  }

type t = {
  id : string prop;
  principal_id : string prop;
  principal_type : string prop;
  role_name : string prop;
  synapse_spark_pool_id : string prop;
  synapse_workspace_id : string prop;
}

let make ?id ?principal_type ?synapse_spark_pool_id
    ?synapse_workspace_id ?timeouts ~principal_id ~role_name __id =
  let __type = "azurerm_synapse_role_assignment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       principal_id = Prop.computed __type __id "principal_id";
       principal_type = Prop.computed __type __id "principal_type";
       role_name = Prop.computed __type __id "role_name";
       synapse_spark_pool_id =
         Prop.computed __type __id "synapse_spark_pool_id";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_role_assignment
        (azurerm_synapse_role_assignment ?id ?principal_type
           ?synapse_spark_pool_id ?synapse_workspace_id ?timeouts
           ~principal_id ~role_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?principal_type ?synapse_spark_pool_id
    ?synapse_workspace_id ?timeouts ~principal_id ~role_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?principal_type ?synapse_spark_pool_id
      ?synapse_workspace_id ?timeouts ~principal_id ~role_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

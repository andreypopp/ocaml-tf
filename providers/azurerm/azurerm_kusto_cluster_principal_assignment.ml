(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_kusto_cluster_principal_assignment = {
  cluster_name : string prop;  (** cluster_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  principal_id : string prop;  (** principal_id *)
  principal_type : string prop;  (** principal_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  role : string prop;  (** role *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster_principal_assignment *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_kusto_cluster_principal_assignment ?id ?timeouts
    ~cluster_name ~name ~principal_id ~principal_type
    ~resource_group_name ~role ~tenant_id () :
    azurerm_kusto_cluster_principal_assignment =
  {
    cluster_name;
    id;
    name;
    principal_id;
    principal_type;
    resource_group_name;
    role;
    tenant_id;
    timeouts;
  }

type t = {
  cluster_name : string prop;
  id : string prop;
  name : string prop;
  principal_id : string prop;
  principal_name : string prop;
  principal_type : string prop;
  resource_group_name : string prop;
  role : string prop;
  tenant_id : string prop;
  tenant_name : string prop;
}

let make ?id ?timeouts ~cluster_name ~name ~principal_id
    ~principal_type ~resource_group_name ~role ~tenant_id __id =
  let __type = "azurerm_kusto_cluster_principal_assignment" in
  let __attrs =
    ({
       cluster_name = Prop.computed __type __id "cluster_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       principal_id = Prop.computed __type __id "principal_id";
       principal_name = Prop.computed __type __id "principal_name";
       principal_type = Prop.computed __type __id "principal_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       role = Prop.computed __type __id "role";
       tenant_id = Prop.computed __type __id "tenant_id";
       tenant_name = Prop.computed __type __id "tenant_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_cluster_principal_assignment
        (azurerm_kusto_cluster_principal_assignment ?id ?timeouts
           ~cluster_name ~name ~principal_id ~principal_type
           ~resource_group_name ~role ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cluster_name ~name
    ~principal_id ~principal_type ~resource_group_name ~role
    ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cluster_name ~name ~principal_id
      ~principal_type ~resource_group_name ~role ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

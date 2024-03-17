(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kusto_database_principal_assignment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_kusto_database_principal_assignment__timeouts *)

type azurerm_kusto_database_principal_assignment = {
  cluster_name : string prop;  (** cluster_name *)
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  principal_id : string prop;  (** principal_id *)
  principal_type : string prop;  (** principal_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  role : string prop;  (** role *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts :
    azurerm_kusto_database_principal_assignment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_database_principal_assignment *)

type t = {
  cluster_name : string prop;
  database_name : string prop;
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

let azurerm_kusto_database_principal_assignment ?id ?timeouts
    ~cluster_name ~database_name ~name ~principal_id ~principal_type
    ~resource_group_name ~role ~tenant_id __resource_id =
  let __resource_type =
    "azurerm_kusto_database_principal_assignment"
  in
  let __resource =
    ({
       cluster_name;
       database_name;
       id;
       name;
       principal_id;
       principal_type;
       resource_group_name;
       role;
       tenant_id;
       timeouts;
     }
      : azurerm_kusto_database_principal_assignment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_database_principal_assignment __resource);
  let __resource_attributes =
    ({
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       principal_id =
         Prop.computed __resource_type __resource_id "principal_id";
       principal_name =
         Prop.computed __resource_type __resource_id "principal_name";
       principal_type =
         Prop.computed __resource_type __resource_id "principal_type";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       role = Prop.computed __resource_type __resource_id "role";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
       tenant_name =
         Prop.computed __resource_type __resource_id "tenant_name";
     }
      : t)
  in
  __resource_attributes

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

let azurerm_kusto_database_principal_assignment ?id ?timeouts
    ~cluster_name ~database_name ~name ~principal_id ~principal_type
    ~resource_group_name ~role ~tenant_id __resource_id =
  let __resource_type =
    "azurerm_kusto_database_principal_assignment"
  in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_database_principal_assignment __resource);
  ()

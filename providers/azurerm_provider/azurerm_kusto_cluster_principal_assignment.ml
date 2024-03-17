(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_kusto_cluster_principal_assignment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster_principal_assignment__timeouts *)

type azurerm_kusto_cluster_principal_assignment = {
  cluster_name : string;  (** cluster_name *)
  name : string;  (** name *)
  principal_id : string;  (** principal_id *)
  principal_type : string;  (** principal_type *)
  resource_group_name : string;  (** resource_group_name *)
  role : string;  (** role *)
  tenant_id : string;  (** tenant_id *)
  timeouts :
    azurerm_kusto_cluster_principal_assignment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster_principal_assignment *)

let azurerm_kusto_cluster_principal_assignment ?timeouts
    ~cluster_name ~name ~principal_id ~principal_type
    ~resource_group_name ~role ~tenant_id __resource_id =
  let __resource_type =
    "azurerm_kusto_cluster_principal_assignment"
  in
  let __resource =
    {
      cluster_name;
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
    (yojson_of_azurerm_kusto_cluster_principal_assignment __resource);
  ()

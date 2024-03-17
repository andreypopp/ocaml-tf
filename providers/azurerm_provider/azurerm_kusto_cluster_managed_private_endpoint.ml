(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_kusto_cluster_managed_private_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster_managed_private_endpoint__timeouts *)

type azurerm_kusto_cluster_managed_private_endpoint = {
  cluster_name : string;  (** cluster_name *)
  group_id : string;  (** group_id *)
  name : string;  (** name *)
  private_link_resource_id : string;  (** private_link_resource_id *)
  private_link_resource_region : string option; [@option]
      (** private_link_resource_region *)
  request_message : string option; [@option]  (** request_message *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_kusto_cluster_managed_private_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster_managed_private_endpoint *)

let azurerm_kusto_cluster_managed_private_endpoint
    ?private_link_resource_region ?request_message ?timeouts
    ~cluster_name ~group_id ~name ~private_link_resource_id
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_kusto_cluster_managed_private_endpoint"
  in
  let __resource =
    {
      cluster_name;
      group_id;
      name;
      private_link_resource_id;
      private_link_resource_region;
      request_message;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_cluster_managed_private_endpoint
       __resource);
  ()

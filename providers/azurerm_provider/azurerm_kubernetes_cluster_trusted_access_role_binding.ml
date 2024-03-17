(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kubernetes_cluster_trusted_access_role_binding__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_trusted_access_role_binding__timeouts *)

type azurerm_kubernetes_cluster_trusted_access_role_binding = {
  id : string option; [@option]  (** id *)
  kubernetes_cluster_id : string;  (** kubernetes_cluster_id *)
  name : string;  (** name *)
  roles : string list;  (** roles *)
  source_resource_id : string;  (** source_resource_id *)
  timeouts :
    azurerm_kubernetes_cluster_trusted_access_role_binding__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_trusted_access_role_binding *)

let azurerm_kubernetes_cluster_trusted_access_role_binding ?id
    ?timeouts ~kubernetes_cluster_id ~name ~roles ~source_resource_id
    __resource_id =
  let __resource_type =
    "azurerm_kubernetes_cluster_trusted_access_role_binding"
  in
  let __resource =
    {
      id;
      kubernetes_cluster_id;
      name;
      roles;
      source_resource_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_cluster_trusted_access_role_binding
       __resource);
  ()

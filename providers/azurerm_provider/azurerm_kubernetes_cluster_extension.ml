(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kubernetes_cluster_extension__plan = {
  name : string;  (** name *)
  product : string;  (** product *)
  promotion_code : string option; [@option]  (** promotion_code *)
  publisher : string;  (** publisher *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_extension__plan *)

type azurerm_kubernetes_cluster_extension__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_extension__timeouts *)

type azurerm_kubernetes_cluster_extension__aks_assigned_identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster_extension = {
  cluster_id : string;  (** cluster_id *)
  configuration_protected_settings : (string * string) list option;
      [@option]
      (** configuration_protected_settings *)
  configuration_settings : (string * string) list option; [@option]
      (** configuration_settings *)
  extension_type : string;  (** extension_type *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  release_namespace : string option; [@option]
      (** release_namespace *)
  release_train : string option; [@option]  (** release_train *)
  target_namespace : string option; [@option]
      (** target_namespace *)
  version : string option; [@option]  (** version *)
  plan : azurerm_kubernetes_cluster_extension__plan list;
  timeouts : azurerm_kubernetes_cluster_extension__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_extension *)

let azurerm_kubernetes_cluster_extension
    ?configuration_protected_settings ?configuration_settings ?id
    ?release_namespace ?release_train ?target_namespace ?version
    ?timeouts ~cluster_id ~extension_type ~name ~plan __resource_id =
  let __resource_type = "azurerm_kubernetes_cluster_extension" in
  let __resource =
    {
      cluster_id;
      configuration_protected_settings;
      configuration_settings;
      extension_type;
      id;
      name;
      release_namespace;
      release_train;
      target_namespace;
      version;
      plan;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kubernetes_cluster_extension __resource);
  ()

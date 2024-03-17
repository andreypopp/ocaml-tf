(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kubernetes_cluster_extension__plan = {
  name : string prop;  (** name *)
  product : string prop;  (** product *)
  promotion_code : string prop option; [@option]
      (** promotion_code *)
  publisher : string prop;  (** publisher *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_extension__plan *)

type azurerm_kubernetes_cluster_extension__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kubernetes_cluster_extension__timeouts *)

type azurerm_kubernetes_cluster_extension__aks_assigned_identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_kubernetes_cluster_extension = {
  cluster_id : string prop;  (** cluster_id *)
  configuration_protected_settings :
    (string * string prop) list option;
      [@option]
      (** configuration_protected_settings *)
  configuration_settings : (string * string prop) list option;
      [@option]
      (** configuration_settings *)
  extension_type : string prop;  (** extension_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  release_namespace : string prop option; [@option]
      (** release_namespace *)
  release_train : string prop option; [@option]  (** release_train *)
  target_namespace : string prop option; [@option]
      (** target_namespace *)
  version : string prop option; [@option]  (** version *)
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

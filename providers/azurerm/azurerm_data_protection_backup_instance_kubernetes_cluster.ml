(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type backup_datasource_parameters = {
  cluster_scoped_resources_enabled : bool prop option; [@option]
      (** cluster_scoped_resources_enabled *)
  excluded_namespaces : string prop list option; [@option]
      (** excluded_namespaces *)
  excluded_resource_types : string prop list option; [@option]
      (** excluded_resource_types *)
  included_namespaces : string prop list option; [@option]
      (** included_namespaces *)
  included_resource_types : string prop list option; [@option]
      (** included_resource_types *)
  label_selectors : string prop list option; [@option]
      (** label_selectors *)
  volume_snapshot_enabled : bool prop option; [@option]
      (** volume_snapshot_enabled *)
}
[@@deriving yojson_of]
(** backup_datasource_parameters *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_protection_backup_instance_kubernetes_cluster = {
  backup_policy_id : string prop;  (** backup_policy_id *)
  id : string prop option; [@option]  (** id *)
  kubernetes_cluster_id : string prop;  (** kubernetes_cluster_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  snapshot_resource_group_name : string prop;
      (** snapshot_resource_group_name *)
  vault_id : string prop;  (** vault_id *)
  backup_datasource_parameters : backup_datasource_parameters list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_instance_kubernetes_cluster *)

let backup_datasource_parameters ?cluster_scoped_resources_enabled
    ?excluded_namespaces ?excluded_resource_types
    ?included_namespaces ?included_resource_types ?label_selectors
    ?volume_snapshot_enabled () : backup_datasource_parameters =
  {
    cluster_scoped_resources_enabled;
    excluded_namespaces;
    excluded_resource_types;
    included_namespaces;
    included_resource_types;
    label_selectors;
    volume_snapshot_enabled;
  }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_protection_backup_instance_kubernetes_cluster ?id
    ?timeouts ~backup_policy_id ~kubernetes_cluster_id ~location
    ~name ~snapshot_resource_group_name ~vault_id
    ~backup_datasource_parameters () :
    azurerm_data_protection_backup_instance_kubernetes_cluster =
  {
    backup_policy_id;
    id;
    kubernetes_cluster_id;
    location;
    name;
    snapshot_resource_group_name;
    vault_id;
    backup_datasource_parameters;
    timeouts;
  }

type t = {
  backup_policy_id : string prop;
  id : string prop;
  kubernetes_cluster_id : string prop;
  location : string prop;
  name : string prop;
  snapshot_resource_group_name : string prop;
  vault_id : string prop;
}

let register ?tf_module ?id ?timeouts ~backup_policy_id
    ~kubernetes_cluster_id ~location ~name
    ~snapshot_resource_group_name ~vault_id
    ~backup_datasource_parameters __resource_id =
  let __resource_type =
    "azurerm_data_protection_backup_instance_kubernetes_cluster"
  in
  let __resource =
    azurerm_data_protection_backup_instance_kubernetes_cluster ?id
      ?timeouts ~backup_policy_id ~kubernetes_cluster_id ~location
      ~name ~snapshot_resource_group_name ~vault_id
      ~backup_datasource_parameters ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_instance_kubernetes_cluster
       __resource);
  let __resource_attributes =
    ({
       backup_policy_id =
         Prop.computed __resource_type __resource_id
           "backup_policy_id";
       id = Prop.computed __resource_type __resource_id "id";
       kubernetes_cluster_id =
         Prop.computed __resource_type __resource_id
           "kubernetes_cluster_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       snapshot_resource_group_name =
         Prop.computed __resource_type __resource_id
           "snapshot_resource_group_name";
       vault_id =
         Prop.computed __resource_type __resource_id "vault_id";
     }
      : t)
  in
  __resource_attributes

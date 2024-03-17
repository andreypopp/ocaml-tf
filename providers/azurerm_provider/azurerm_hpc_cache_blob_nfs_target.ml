(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_hpc_cache_blob_nfs_target__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_blob_nfs_target__timeouts *)

type azurerm_hpc_cache_blob_nfs_target = {
  access_policy_name : string prop option; [@option]
      (** access_policy_name *)
  cache_name : string prop;  (** cache_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  namespace_path : string prop;  (** namespace_path *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_container_id : string prop;  (** storage_container_id *)
  usage_model : string prop;  (** usage_model *)
  verification_timer_in_seconds : float prop option; [@option]
      (** verification_timer_in_seconds *)
  write_back_timer_in_seconds : float prop option; [@option]
      (** write_back_timer_in_seconds *)
  timeouts : azurerm_hpc_cache_blob_nfs_target__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_blob_nfs_target *)

type t = {
  access_policy_name : string prop;
  cache_name : string prop;
  id : string prop;
  name : string prop;
  namespace_path : string prop;
  resource_group_name : string prop;
  storage_container_id : string prop;
  usage_model : string prop;
  verification_timer_in_seconds : float prop;
  write_back_timer_in_seconds : float prop;
}

let azurerm_hpc_cache_blob_nfs_target ?access_policy_name ?id
    ?verification_timer_in_seconds ?write_back_timer_in_seconds
    ?timeouts ~cache_name ~name ~namespace_path ~resource_group_name
    ~storage_container_id ~usage_model __resource_id =
  let __resource_type = "azurerm_hpc_cache_blob_nfs_target" in
  let __resource =
    ({
       access_policy_name;
       cache_name;
       id;
       name;
       namespace_path;
       resource_group_name;
       storage_container_id;
       usage_model;
       verification_timer_in_seconds;
       write_back_timer_in_seconds;
       timeouts;
     }
      : azurerm_hpc_cache_blob_nfs_target)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_hpc_cache_blob_nfs_target __resource);
  let __resource_attributes =
    ({
       access_policy_name =
         Prop.computed __resource_type __resource_id
           "access_policy_name";
       cache_name =
         Prop.computed __resource_type __resource_id "cache_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       namespace_path =
         Prop.computed __resource_type __resource_id "namespace_path";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       storage_container_id =
         Prop.computed __resource_type __resource_id
           "storage_container_id";
       usage_model =
         Prop.computed __resource_type __resource_id "usage_model";
       verification_timer_in_seconds =
         Prop.computed __resource_type __resource_id
           "verification_timer_in_seconds";
       write_back_timer_in_seconds =
         Prop.computed __resource_type __resource_id
           "write_back_timer_in_seconds";
     }
      : t)
  in
  __resource_attributes

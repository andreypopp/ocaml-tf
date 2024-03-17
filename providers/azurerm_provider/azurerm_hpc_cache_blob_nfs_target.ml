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

let azurerm_hpc_cache_blob_nfs_target ?access_policy_name ?id
    ?verification_timer_in_seconds ?write_back_timer_in_seconds
    ?timeouts ~cache_name ~name ~namespace_path ~resource_group_name
    ~storage_container_id ~usage_model __resource_id =
  let __resource_type = "azurerm_hpc_cache_blob_nfs_target" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_hpc_cache_blob_nfs_target __resource);
  ()

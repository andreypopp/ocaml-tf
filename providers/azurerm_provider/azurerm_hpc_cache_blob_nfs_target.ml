(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_hpc_cache_blob_nfs_target__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_blob_nfs_target__timeouts *)

type azurerm_hpc_cache_blob_nfs_target = {
  access_policy_name : string option; [@option]
      (** access_policy_name *)
  cache_name : string;  (** cache_name *)
  name : string;  (** name *)
  namespace_path : string;  (** namespace_path *)
  resource_group_name : string;  (** resource_group_name *)
  storage_container_id : string;  (** storage_container_id *)
  usage_model : string;  (** usage_model *)
  verification_timer_in_seconds : float option; [@option]
      (** verification_timer_in_seconds *)
  write_back_timer_in_seconds : float option; [@option]
      (** write_back_timer_in_seconds *)
  timeouts : azurerm_hpc_cache_blob_nfs_target__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_blob_nfs_target *)

let azurerm_hpc_cache_blob_nfs_target ?access_policy_name
    ?verification_timer_in_seconds ?write_back_timer_in_seconds
    ?timeouts ~cache_name ~name ~namespace_path ~resource_group_name
    ~storage_container_id ~usage_model __resource_id =
  let __resource_type = "azurerm_hpc_cache_blob_nfs_target" in
  let __resource =
    {
      access_policy_name;
      cache_name;
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

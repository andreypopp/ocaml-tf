(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_hpc_cache_nfs_target__namespace_junction = {
  access_policy_name : string option; [@option]
      (** access_policy_name *)
  namespace_path : string;  (** namespace_path *)
  nfs_export : string;  (** nfs_export *)
  target_path : string option; [@option]  (** target_path *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_nfs_target__namespace_junction *)

type azurerm_hpc_cache_nfs_target__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_nfs_target__timeouts *)

type azurerm_hpc_cache_nfs_target = {
  cache_name : string;  (** cache_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  target_host_name : string;  (** target_host_name *)
  usage_model : string;  (** usage_model *)
  verification_timer_in_seconds : float option; [@option]
      (** verification_timer_in_seconds *)
  write_back_timer_in_seconds : float option; [@option]
      (** write_back_timer_in_seconds *)
  namespace_junction :
    azurerm_hpc_cache_nfs_target__namespace_junction list;
  timeouts : azurerm_hpc_cache_nfs_target__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_nfs_target *)

let azurerm_hpc_cache_nfs_target ?verification_timer_in_seconds
    ?write_back_timer_in_seconds ?timeouts ~cache_name ~name
    ~resource_group_name ~target_host_name ~usage_model
    ~namespace_junction __resource_id =
  let __resource_type = "azurerm_hpc_cache_nfs_target" in
  let __resource =
    {
      cache_name;
      name;
      resource_group_name;
      target_host_name;
      usage_model;
      verification_timer_in_seconds;
      write_back_timer_in_seconds;
      namespace_junction;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_hpc_cache_nfs_target __resource);
  ()

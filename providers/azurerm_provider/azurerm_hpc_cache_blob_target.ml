(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_hpc_cache_blob_target__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_blob_target__timeouts *)

type azurerm_hpc_cache_blob_target = {
  access_policy_name : string option; [@option]
      (** access_policy_name *)
  cache_name : string;  (** cache_name *)
  name : string;  (** name *)
  namespace_path : string;  (** namespace_path *)
  resource_group_name : string;  (** resource_group_name *)
  storage_container_id : string;  (** storage_container_id *)
  timeouts : azurerm_hpc_cache_blob_target__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_blob_target *)

let azurerm_hpc_cache_blob_target ?access_policy_name ?timeouts
    ~cache_name ~name ~namespace_path ~resource_group_name
    ~storage_container_id __resource_id =
  let __resource_type = "azurerm_hpc_cache_blob_target" in
  let __resource =
    {
      access_policy_name;
      cache_name;
      name;
      namespace_path;
      resource_group_name;
      storage_container_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_hpc_cache_blob_target __resource);
  ()

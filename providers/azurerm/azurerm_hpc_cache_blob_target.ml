(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_hpc_cache_blob_target = {
  access_policy_name : string prop option; [@option]
      (** access_policy_name *)
  cache_name : string prop;  (** cache_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  namespace_path : string prop;  (** namespace_path *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_container_id : string prop;  (** storage_container_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_blob_target *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_hpc_cache_blob_target ?access_policy_name ?id ?timeouts
    ~cache_name ~name ~namespace_path ~resource_group_name
    ~storage_container_id () : azurerm_hpc_cache_blob_target =
  {
    access_policy_name;
    cache_name;
    id;
    name;
    namespace_path;
    resource_group_name;
    storage_container_id;
    timeouts;
  }

type t = {
  access_policy_name : string prop;
  cache_name : string prop;
  id : string prop;
  name : string prop;
  namespace_path : string prop;
  resource_group_name : string prop;
  storage_container_id : string prop;
}

let register ?tf_module ?access_policy_name ?id ?timeouts ~cache_name
    ~name ~namespace_path ~resource_group_name ~storage_container_id
    __resource_id =
  let __resource_type = "azurerm_hpc_cache_blob_target" in
  let __resource =
    azurerm_hpc_cache_blob_target ?access_policy_name ?id ?timeouts
      ~cache_name ~name ~namespace_path ~resource_group_name
      ~storage_container_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_hpc_cache_blob_target __resource);
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
     }
      : t)
  in
  __resource_attributes

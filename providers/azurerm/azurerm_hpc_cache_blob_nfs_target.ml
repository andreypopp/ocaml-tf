(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hpc_cache_blob_nfs_target *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_hpc_cache_blob_nfs_target ?access_policy_name ?id
    ?verification_timer_in_seconds ?write_back_timer_in_seconds
    ?timeouts ~cache_name ~name ~namespace_path ~resource_group_name
    ~storage_container_id ~usage_model () :
    azurerm_hpc_cache_blob_nfs_target =
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

let make ?access_policy_name ?id ?verification_timer_in_seconds
    ?write_back_timer_in_seconds ?timeouts ~cache_name ~name
    ~namespace_path ~resource_group_name ~storage_container_id
    ~usage_model __id =
  let __type = "azurerm_hpc_cache_blob_nfs_target" in
  let __attrs =
    ({
       access_policy_name =
         Prop.computed __type __id "access_policy_name";
       cache_name = Prop.computed __type __id "cache_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace_path = Prop.computed __type __id "namespace_path";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_container_id =
         Prop.computed __type __id "storage_container_id";
       usage_model = Prop.computed __type __id "usage_model";
       verification_timer_in_seconds =
         Prop.computed __type __id "verification_timer_in_seconds";
       write_back_timer_in_seconds =
         Prop.computed __type __id "write_back_timer_in_seconds";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_hpc_cache_blob_nfs_target
        (azurerm_hpc_cache_blob_nfs_target ?access_policy_name ?id
           ?verification_timer_in_seconds
           ?write_back_timer_in_seconds ?timeouts ~cache_name ~name
           ~namespace_path ~resource_group_name ~storage_container_id
           ~usage_model ());
    attrs = __attrs;
  }

let register ?tf_module ?access_policy_name ?id
    ?verification_timer_in_seconds ?write_back_timer_in_seconds
    ?timeouts ~cache_name ~name ~namespace_path ~resource_group_name
    ~storage_container_id ~usage_model __id =
  let (r : _ Tf_core.resource) =
    make ?access_policy_name ?id ?verification_timer_in_seconds
      ?write_back_timer_in_seconds ?timeouts ~cache_name ~name
      ~namespace_path ~resource_group_name ~storage_container_id
      ~usage_model __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

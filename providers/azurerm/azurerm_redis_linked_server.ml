(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_redis_linked_server = {
  id : string prop option; [@option]  (** id *)
  linked_redis_cache_id : string prop;  (** linked_redis_cache_id *)
  linked_redis_cache_location : string prop;
      (** linked_redis_cache_location *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_role : string prop;  (** server_role *)
  target_redis_cache_name : string prop;
      (** target_redis_cache_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_redis_linked_server *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_redis_linked_server ?id ?timeouts ~linked_redis_cache_id
    ~linked_redis_cache_location ~resource_group_name ~server_role
    ~target_redis_cache_name () : azurerm_redis_linked_server =
  {
    id;
    linked_redis_cache_id;
    linked_redis_cache_location;
    resource_group_name;
    server_role;
    target_redis_cache_name;
    timeouts;
  }

type t = {
  geo_replicated_primary_host_name : string prop;
  id : string prop;
  linked_redis_cache_id : string prop;
  linked_redis_cache_location : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_role : string prop;
  target_redis_cache_name : string prop;
}

let make ?id ?timeouts ~linked_redis_cache_id
    ~linked_redis_cache_location ~resource_group_name ~server_role
    ~target_redis_cache_name __id =
  let __type = "azurerm_redis_linked_server" in
  let __attrs =
    ({
       geo_replicated_primary_host_name =
         Prop.computed __type __id "geo_replicated_primary_host_name";
       id = Prop.computed __type __id "id";
       linked_redis_cache_id =
         Prop.computed __type __id "linked_redis_cache_id";
       linked_redis_cache_location =
         Prop.computed __type __id "linked_redis_cache_location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_role = Prop.computed __type __id "server_role";
       target_redis_cache_name =
         Prop.computed __type __id "target_redis_cache_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_redis_linked_server
        (azurerm_redis_linked_server ?id ?timeouts
           ~linked_redis_cache_id ~linked_redis_cache_location
           ~resource_group_name ~server_role ~target_redis_cache_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~linked_redis_cache_id
    ~linked_redis_cache_location ~resource_group_name ~server_role
    ~target_redis_cache_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~linked_redis_cache_id
      ~linked_redis_cache_location ~resource_group_name ~server_role
      ~target_redis_cache_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

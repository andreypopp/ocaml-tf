(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_redis_linked_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_redis_linked_server__timeouts *)

type azurerm_redis_linked_server = {
  id : string prop option; [@option]  (** id *)
  linked_redis_cache_id : string prop;  (** linked_redis_cache_id *)
  linked_redis_cache_location : string prop;
      (** linked_redis_cache_location *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_role : string prop;  (** server_role *)
  target_redis_cache_name : string prop;
      (** target_redis_cache_name *)
  timeouts : azurerm_redis_linked_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_redis_linked_server *)

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

let azurerm_redis_linked_server ?id ?timeouts ~linked_redis_cache_id
    ~linked_redis_cache_location ~resource_group_name ~server_role
    ~target_redis_cache_name __resource_id =
  let __resource_type = "azurerm_redis_linked_server" in
  let __resource =
    ({
       id;
       linked_redis_cache_id;
       linked_redis_cache_location;
       resource_group_name;
       server_role;
       target_redis_cache_name;
       timeouts;
     }
      : azurerm_redis_linked_server)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_redis_linked_server __resource);
  let __resource_attributes =
    ({
       geo_replicated_primary_host_name =
         Prop.computed __resource_type __resource_id
           "geo_replicated_primary_host_name";
       id = Prop.computed __resource_type __resource_id "id";
       linked_redis_cache_id =
         Prop.computed __resource_type __resource_id
           "linked_redis_cache_id";
       linked_redis_cache_location =
         Prop.computed __resource_type __resource_id
           "linked_redis_cache_location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       server_role =
         Prop.computed __resource_type __resource_id "server_role";
       target_redis_cache_name =
         Prop.computed __resource_type __resource_id
           "target_redis_cache_name";
     }
      : t)
  in
  __resource_attributes

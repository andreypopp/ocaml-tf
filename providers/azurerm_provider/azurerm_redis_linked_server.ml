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

let azurerm_redis_linked_server ?id ?timeouts ~linked_redis_cache_id
    ~linked_redis_cache_location ~resource_group_name ~server_role
    ~target_redis_cache_name __resource_id =
  let __resource_type = "azurerm_redis_linked_server" in
  let __resource =
    {
      id;
      linked_redis_cache_id;
      linked_redis_cache_location;
      resource_group_name;
      server_role;
      target_redis_cache_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_redis_linked_server __resource);
  ()

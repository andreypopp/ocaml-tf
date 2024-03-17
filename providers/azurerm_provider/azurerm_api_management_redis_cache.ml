(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_redis_cache__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_redis_cache__timeouts *)

type azurerm_api_management_redis_cache = {
  api_management_id : string prop;  (** api_management_id *)
  cache_location : string prop option; [@option]
      (** cache_location *)
  connection_string : string prop;  (** connection_string *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  redis_cache_id : string prop option; [@option]
      (** redis_cache_id *)
  timeouts : azurerm_api_management_redis_cache__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_redis_cache *)

type t = {
  api_management_id : string prop;
  cache_location : string prop;
  connection_string : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  redis_cache_id : string prop;
}

let azurerm_api_management_redis_cache ?cache_location ?description
    ?id ?redis_cache_id ?timeouts ~api_management_id
    ~connection_string ~name __resource_id =
  let __resource_type = "azurerm_api_management_redis_cache" in
  let __resource =
    ({
       api_management_id;
       cache_location;
       connection_string;
       description;
       id;
       name;
       redis_cache_id;
       timeouts;
     }
      : azurerm_api_management_redis_cache)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_redis_cache __resource);
  let __resource_attributes =
    ({
       api_management_id =
         Prop.computed __resource_type __resource_id
           "api_management_id";
       cache_location =
         Prop.computed __resource_type __resource_id "cache_location";
       connection_string =
         Prop.computed __resource_type __resource_id
           "connection_string";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       redis_cache_id =
         Prop.computed __resource_type __resource_id "redis_cache_id";
     }
      : t)
  in
  __resource_attributes

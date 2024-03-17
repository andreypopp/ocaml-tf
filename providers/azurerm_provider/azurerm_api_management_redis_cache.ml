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

let azurerm_api_management_redis_cache ?cache_location ?description
    ?id ?redis_cache_id ?timeouts ~api_management_id
    ~connection_string ~name __resource_id =
  let __resource_type = "azurerm_api_management_redis_cache" in
  let __resource =
    {
      api_management_id;
      cache_location;
      connection_string;
      description;
      id;
      name;
      redis_cache_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_redis_cache __resource);
  ()

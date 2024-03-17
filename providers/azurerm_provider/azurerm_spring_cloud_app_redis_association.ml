(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_app_redis_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_redis_association__timeouts *)

type azurerm_spring_cloud_app_redis_association = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  redis_access_key : string prop;  (** redis_access_key *)
  redis_cache_id : string prop;  (** redis_cache_id *)
  spring_cloud_app_id : string prop;  (** spring_cloud_app_id *)
  ssl_enabled : bool prop option; [@option]  (** ssl_enabled *)
  timeouts :
    azurerm_spring_cloud_app_redis_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_redis_association *)

let azurerm_spring_cloud_app_redis_association ?id ?ssl_enabled
    ?timeouts ~name ~redis_access_key ~redis_cache_id
    ~spring_cloud_app_id __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_app_redis_association"
  in
  let __resource =
    {
      id;
      name;
      redis_access_key;
      redis_cache_id;
      spring_cloud_app_id;
      ssl_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_app_redis_association __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_spring_cloud_app_redis_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_redis_association__timeouts *)

type azurerm_spring_cloud_app_redis_association = {
  name : string;  (** name *)
  redis_access_key : string;  (** redis_access_key *)
  redis_cache_id : string;  (** redis_cache_id *)
  spring_cloud_app_id : string;  (** spring_cloud_app_id *)
  ssl_enabled : bool option; [@option]  (** ssl_enabled *)
  timeouts :
    azurerm_spring_cloud_app_redis_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_redis_association *)

let azurerm_spring_cloud_app_redis_association ?ssl_enabled ?timeouts
    ~name ~redis_access_key ~redis_cache_id ~spring_cloud_app_id
    __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_app_redis_association"
  in
  let __resource =
    {
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

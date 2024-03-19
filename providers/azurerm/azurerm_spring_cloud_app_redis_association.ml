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

type azurerm_spring_cloud_app_redis_association = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  redis_access_key : string prop;  (** redis_access_key *)
  redis_cache_id : string prop;  (** redis_cache_id *)
  spring_cloud_app_id : string prop;  (** spring_cloud_app_id *)
  ssl_enabled : bool prop option; [@option]  (** ssl_enabled *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_redis_association *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_app_redis_association ?id ?ssl_enabled
    ?timeouts ~name ~redis_access_key ~redis_cache_id
    ~spring_cloud_app_id () :
    azurerm_spring_cloud_app_redis_association =
  {
    id;
    name;
    redis_access_key;
    redis_cache_id;
    spring_cloud_app_id;
    ssl_enabled;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  redis_access_key : string prop;
  redis_cache_id : string prop;
  spring_cloud_app_id : string prop;
  ssl_enabled : bool prop;
}

let register ?tf_module ?id ?ssl_enabled ?timeouts ~name
    ~redis_access_key ~redis_cache_id ~spring_cloud_app_id
    __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_app_redis_association"
  in
  let __resource =
    azurerm_spring_cloud_app_redis_association ?id ?ssl_enabled
      ?timeouts ~name ~redis_access_key ~redis_cache_id
      ~spring_cloud_app_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_app_redis_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       redis_access_key =
         Prop.computed __resource_type __resource_id
           "redis_access_key";
       redis_cache_id =
         Prop.computed __resource_type __resource_id "redis_cache_id";
       spring_cloud_app_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_app_id";
       ssl_enabled =
         Prop.computed __resource_type __resource_id "ssl_enabled";
     }
      : t)
  in
  __resource_attributes

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

let make ?id ?ssl_enabled ?timeouts ~name ~redis_access_key
    ~redis_cache_id ~spring_cloud_app_id __id =
  let __type = "azurerm_spring_cloud_app_redis_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       redis_access_key =
         Prop.computed __type __id "redis_access_key";
       redis_cache_id = Prop.computed __type __id "redis_cache_id";
       spring_cloud_app_id =
         Prop.computed __type __id "spring_cloud_app_id";
       ssl_enabled = Prop.computed __type __id "ssl_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_app_redis_association
        (azurerm_spring_cloud_app_redis_association ?id ?ssl_enabled
           ?timeouts ~name ~redis_access_key ~redis_cache_id
           ~spring_cloud_app_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ssl_enabled ?timeouts ~name
    ~redis_access_key ~redis_cache_id ~spring_cloud_app_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ssl_enabled ?timeouts ~name ~redis_access_key
      ~redis_cache_id ~spring_cloud_app_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

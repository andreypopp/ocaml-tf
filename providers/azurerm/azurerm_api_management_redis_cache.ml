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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_redis_cache *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_redis_cache ?cache_location ?description
    ?id ?redis_cache_id ?timeouts ~api_management_id
    ~connection_string ~name () : azurerm_api_management_redis_cache
    =
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

type t = {
  api_management_id : string prop;
  cache_location : string prop;
  connection_string : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  redis_cache_id : string prop;
}

let make ?cache_location ?description ?id ?redis_cache_id ?timeouts
    ~api_management_id ~connection_string ~name __id =
  let __type = "azurerm_api_management_redis_cache" in
  let __attrs =
    ({
       api_management_id =
         Prop.computed __type __id "api_management_id";
       cache_location = Prop.computed __type __id "cache_location";
       connection_string =
         Prop.computed __type __id "connection_string";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       redis_cache_id = Prop.computed __type __id "redis_cache_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_redis_cache
        (azurerm_api_management_redis_cache ?cache_location
           ?description ?id ?redis_cache_id ?timeouts
           ~api_management_id ~connection_string ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?cache_location ?description ?id
    ?redis_cache_id ?timeouts ~api_management_id ~connection_string
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?cache_location ?description ?id ?redis_cache_id ?timeouts
      ~api_management_id ~connection_string ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

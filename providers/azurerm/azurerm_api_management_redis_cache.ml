(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_api_management_redis_cache = {
  api_management_id : string prop;
  cache_location : string prop option; [@option]
  connection_string : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  redis_cache_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_redis_cache) -> ()

let yojson_of_azurerm_api_management_redis_cache =
  (function
   | {
       api_management_id = v_api_management_id;
       cache_location = v_cache_location;
       connection_string = v_connection_string;
       description = v_description;
       id = v_id;
       name = v_name;
       redis_cache_id = v_redis_cache_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_redis_cache_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redis_cache_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       let bnds =
         match v_cache_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_id
         in
         ("api_management_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_redis_cache ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_redis_cache

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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

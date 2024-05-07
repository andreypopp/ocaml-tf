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

type azurerm_spring_cloud_app_redis_association = {
  id : string prop option; [@option]
  name : string prop;
  redis_access_key : string prop;
  redis_cache_id : string prop;
  spring_cloud_app_id : string prop;
  ssl_enabled : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_app_redis_association) -> ()

let yojson_of_azurerm_spring_cloud_app_redis_association =
  (function
   | {
       id = v_id;
       name = v_name;
       redis_access_key = v_redis_access_key;
       redis_cache_id = v_redis_cache_id;
       spring_cloud_app_id = v_spring_cloud_app_id;
       ssl_enabled = v_ssl_enabled;
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
         match v_ssl_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ssl_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_app_id
         in
         ("spring_cloud_app_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_redis_cache_id
         in
         ("redis_cache_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_redis_access_key
         in
         ("redis_access_key", arg) :: bnds
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
       `Assoc bnds
    : azurerm_spring_cloud_app_redis_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_app_redis_association

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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

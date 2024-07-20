(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type azurerm_redis_cache_access_policy_assignment = {
  access_policy_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  object_id : string prop;
  object_id_alias : string prop;
  redis_cache_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_redis_cache_access_policy_assignment) -> ()

let yojson_of_azurerm_redis_cache_access_policy_assignment =
  (function
   | {
       access_policy_name = v_access_policy_name;
       id = v_id;
       name = v_name;
       object_id = v_object_id;
       object_id_alias = v_object_id_alias;
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
         let arg =
           yojson_of_prop yojson_of_string v_redis_cache_id
         in
         ("redis_cache_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_object_id_alias
         in
         ("object_id_alias", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_access_policy_name
         in
         ("access_policy_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_redis_cache_access_policy_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_redis_cache_access_policy_assignment

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_redis_cache_access_policy_assignment ?id ?timeouts
    ~access_policy_name ~name ~object_id ~object_id_alias
    ~redis_cache_id () : azurerm_redis_cache_access_policy_assignment
    =
  {
    access_policy_name;
    id;
    name;
    object_id;
    object_id_alias;
    redis_cache_id;
    timeouts;
  }

type t = {
  tf_name : string;
  access_policy_name : string prop;
  id : string prop;
  name : string prop;
  object_id : string prop;
  object_id_alias : string prop;
  redis_cache_id : string prop;
}

let make ?id ?timeouts ~access_policy_name ~name ~object_id
    ~object_id_alias ~redis_cache_id __id =
  let __type = "azurerm_redis_cache_access_policy_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       access_policy_name =
         Prop.computed __type __id "access_policy_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       object_id = Prop.computed __type __id "object_id";
       object_id_alias = Prop.computed __type __id "object_id_alias";
       redis_cache_id = Prop.computed __type __id "redis_cache_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_redis_cache_access_policy_assignment
        (azurerm_redis_cache_access_policy_assignment ?id ?timeouts
           ~access_policy_name ~name ~object_id ~object_id_alias
           ~redis_cache_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~access_policy_name ~name
    ~object_id ~object_id_alias ~redis_cache_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~access_policy_name ~name ~object_id
      ~object_id_alias ~redis_cache_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

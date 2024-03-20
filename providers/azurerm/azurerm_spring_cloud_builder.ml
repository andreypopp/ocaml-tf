(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type build_pack_group = {
  build_pack_ids : string prop list option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build_pack_group) -> ()

let yojson_of_build_pack_group =
  (function
   | { build_pack_ids = v_build_pack_ids; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_build_pack_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "build_pack_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build_pack_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_pack_group

[@@@deriving.end]

type stack = { id : string prop; version : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : stack) -> ()

let yojson_of_stack =
  (function
   | { id = v_id; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : stack -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stack

[@@@deriving.end]

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

type azurerm_spring_cloud_builder = {
  id : string prop option; [@option]
  name : string prop;
  spring_cloud_service_id : string prop;
  build_pack_group : build_pack_group list;
  stack : stack list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_builder) -> ()

let yojson_of_azurerm_spring_cloud_builder =
  (function
   | {
       id = v_id;
       name = v_name;
       spring_cloud_service_id = v_spring_cloud_service_id;
       build_pack_group = v_build_pack_group;
       stack = v_stack;
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
         let arg = yojson_of_list yojson_of_stack v_stack in
         ("stack", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_build_pack_group
             v_build_pack_group
         in
         ("build_pack_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_service_id
         in
         ("spring_cloud_service_id", arg) :: bnds
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
    : azurerm_spring_cloud_builder ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_builder

[@@@deriving.end]

let build_pack_group ?build_pack_ids ~name () : build_pack_group =
  { build_pack_ids; name }

let stack ~id ~version () : stack = { id; version }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_builder ?id ?timeouts ~name
    ~spring_cloud_service_id ~build_pack_group ~stack () :
    azurerm_spring_cloud_builder =
  {
    id;
    name;
    spring_cloud_service_id;
    build_pack_group;
    stack;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

let make ?id ?timeouts ~name ~spring_cloud_service_id
    ~build_pack_group ~stack __id =
  let __type = "azurerm_spring_cloud_builder" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_builder
        (azurerm_spring_cloud_builder ?id ?timeouts ~name
           ~spring_cloud_service_id ~build_pack_group ~stack ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~spring_cloud_service_id
    ~build_pack_group ~stack __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~spring_cloud_service_id
      ~build_pack_group ~stack __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

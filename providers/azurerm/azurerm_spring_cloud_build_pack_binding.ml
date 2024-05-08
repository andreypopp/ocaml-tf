(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type launch = {
  properties : (string * string prop) list option; [@option]
  secrets : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch) -> ()

let yojson_of_launch =
  (function
   | { properties = v_properties; secrets = v_secrets } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secrets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "secrets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch

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

type azurerm_spring_cloud_build_pack_binding = {
  binding_type : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  spring_cloud_builder_id : string prop;
  launch : launch list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_build_pack_binding) -> ()

let yojson_of_azurerm_spring_cloud_build_pack_binding =
  (function
   | {
       binding_type = v_binding_type;
       id = v_id;
       name = v_name;
       spring_cloud_builder_id = v_spring_cloud_builder_id;
       launch = v_launch;
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
         if Stdlib.( = ) [] v_launch then bnds
         else
           let arg = (yojson_of_list yojson_of_launch) v_launch in
           let bnd = "launch", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_builder_id
         in
         ("spring_cloud_builder_id", arg) :: bnds
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
         match v_binding_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "binding_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_build_pack_binding ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_build_pack_binding

[@@@deriving.end]

let launch ?properties ?secrets () : launch = { properties; secrets }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_build_pack_binding ?binding_type ?id
    ?(launch = []) ?timeouts ~name ~spring_cloud_builder_id () :
    azurerm_spring_cloud_build_pack_binding =
  {
    binding_type;
    id;
    name;
    spring_cloud_builder_id;
    launch;
    timeouts;
  }

type t = {
  tf_name : string;
  binding_type : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_builder_id : string prop;
}

let make ?binding_type ?id ?(launch = []) ?timeouts ~name
    ~spring_cloud_builder_id __id =
  let __type = "azurerm_spring_cloud_build_pack_binding" in
  let __attrs =
    ({
       tf_name = __id;
       binding_type = Prop.computed __type __id "binding_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       spring_cloud_builder_id =
         Prop.computed __type __id "spring_cloud_builder_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_build_pack_binding
        (azurerm_spring_cloud_build_pack_binding ?binding_type ?id
           ~launch ?timeouts ~name ~spring_cloud_builder_id ());
    attrs = __attrs;
  }

let register ?tf_module ?binding_type ?id ?(launch = []) ?timeouts
    ~name ~spring_cloud_builder_id __id =
  let (r : _ Tf_core.resource) =
    make ?binding_type ?id ~launch ?timeouts ~name
      ~spring_cloud_builder_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

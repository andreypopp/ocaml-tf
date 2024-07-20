(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type create_source = {
  source_id : string prop;
  source_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : create_source) -> ()

let yojson_of_create_source =
  (function
   | { source_id = v_source_id; source_type = v_source_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_type in
         ("source_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_id in
         ("source_id", arg) :: bnds
       in
       `Assoc bnds
    : create_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_create_source

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

type azurerm_elastic_san_volume = {
  id : string prop option; [@option]
  name : string prop;
  size_in_gib : float prop;
  volume_group_id : string prop;
  create_source : create_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_elastic_san_volume) -> ()

let yojson_of_azurerm_elastic_san_volume =
  (function
   | {
       id = v_id;
       name = v_name;
       size_in_gib = v_size_in_gib;
       volume_group_id = v_volume_group_id;
       create_source = v_create_source;
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
         if Stdlib.( = ) [] v_create_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_create_source) v_create_source
           in
           let bnd = "create_source", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_volume_group_id
         in
         ("volume_group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_in_gib in
         ("size_in_gib", arg) :: bnds
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
    : azurerm_elastic_san_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_elastic_san_volume

[@@@deriving.end]

let create_source ~source_id ~source_type () : create_source =
  { source_id; source_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_elastic_san_volume ?id ?(create_source = []) ?timeouts
    ~name ~size_in_gib ~volume_group_id () :
    azurerm_elastic_san_volume =
  { id; name; size_in_gib; volume_group_id; create_source; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  size_in_gib : float prop;
  target_iqn : string prop;
  target_portal_hostname : string prop;
  target_portal_port : float prop;
  volume_group_id : string prop;
  volume_id : string prop;
}

let make ?id ?(create_source = []) ?timeouts ~name ~size_in_gib
    ~volume_group_id __id =
  let __type = "azurerm_elastic_san_volume" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       size_in_gib = Prop.computed __type __id "size_in_gib";
       target_iqn = Prop.computed __type __id "target_iqn";
       target_portal_hostname =
         Prop.computed __type __id "target_portal_hostname";
       target_portal_port =
         Prop.computed __type __id "target_portal_port";
       volume_group_id = Prop.computed __type __id "volume_group_id";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_elastic_san_volume
        (azurerm_elastic_san_volume ?id ~create_source ?timeouts
           ~name ~size_in_gib ~volume_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(create_source = []) ?timeouts ~name
    ~size_in_gib ~volume_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~create_source ?timeouts ~name ~size_in_gib
      ~volume_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

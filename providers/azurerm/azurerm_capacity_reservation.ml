(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sku = { capacity : float prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | { capacity = v_capacity; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

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

type azurerm_capacity_reservation = {
  capacity_reservation_group_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  zone : string prop option; [@option]
  sku : sku list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_capacity_reservation) -> ()

let yojson_of_azurerm_capacity_reservation =
  (function
   | {
       capacity_reservation_group_id =
         v_capacity_reservation_group_id;
       id = v_id;
       name = v_name;
       tags = v_tags;
       zone = v_zone;
       sku = v_sku;
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
         if [] = v_sku then bnds
         else
           let arg = (yojson_of_list yojson_of_sku) v_sku in
           let bnd = "sku", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
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
         let arg =
           yojson_of_prop yojson_of_string
             v_capacity_reservation_group_id
         in
         ("capacity_reservation_group_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_capacity_reservation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_capacity_reservation

[@@@deriving.end]

let sku ~capacity ~name () : sku = { capacity; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_capacity_reservation ?id ?tags ?zone ?timeouts
    ~capacity_reservation_group_id ~name ~sku () :
    azurerm_capacity_reservation =
  {
    capacity_reservation_group_id;
    id;
    name;
    tags;
    zone;
    sku;
    timeouts;
  }

type t = {
  tf_name : string;
  capacity_reservation_group_id : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  zone : string prop;
}

let make ?id ?tags ?zone ?timeouts ~capacity_reservation_group_id
    ~name ~sku __id =
  let __type = "azurerm_capacity_reservation" in
  let __attrs =
    ({
       tf_name = __id;
       capacity_reservation_group_id =
         Prop.computed __type __id "capacity_reservation_group_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_capacity_reservation
        (azurerm_capacity_reservation ?id ?tags ?zone ?timeouts
           ~capacity_reservation_group_id ~name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?zone ?timeouts
    ~capacity_reservation_group_id ~name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?zone ?timeouts ~capacity_reservation_group_id
      ~name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sku = {
  name : string prop;
  tier : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | { name = v_name; tier = v_tier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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

type azurerm_elastic_san = {
  base_size_in_tib : float prop;
  extended_size_in_tib : float prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  zones : string prop list option; [@option]
  sku : sku list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_elastic_san) -> ()

let yojson_of_azurerm_elastic_san =
  (function
   | {
       base_size_in_tib = v_base_size_in_tib;
       extended_size_in_tib = v_extended_size_in_tib;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       zones = v_zones;
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
         if Stdlib.( = ) [] v_sku then bnds
         else
           let arg = (yojson_of_list yojson_of_sku) v_sku in
           let bnd = "sku", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_extended_size_in_tib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "extended_size_in_tib", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_base_size_in_tib
         in
         ("base_size_in_tib", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_elastic_san -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_elastic_san

[@@@deriving.end]

let sku ?tier ~name () : sku = { name; tier }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_elastic_san ?extended_size_in_tib ?id ?tags ?zones
    ?timeouts ~base_size_in_tib ~location ~name ~resource_group_name
    ~sku () : azurerm_elastic_san =
  {
    base_size_in_tib;
    extended_size_in_tib;
    id;
    location;
    name;
    resource_group_name;
    tags;
    zones;
    sku;
    timeouts;
  }

type t = {
  tf_name : string;
  base_size_in_tib : float prop;
  extended_size_in_tib : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  total_iops : float prop;
  total_mbps : float prop;
  total_size_in_tib : float prop;
  total_volume_size_in_gib : float prop;
  volume_group_count : float prop;
  zones : string list prop;
}

let make ?extended_size_in_tib ?id ?tags ?zones ?timeouts
    ~base_size_in_tib ~location ~name ~resource_group_name ~sku __id
    =
  let __type = "azurerm_elastic_san" in
  let __attrs =
    ({
       tf_name = __id;
       base_size_in_tib =
         Prop.computed __type __id "base_size_in_tib";
       extended_size_in_tib =
         Prop.computed __type __id "extended_size_in_tib";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       total_iops = Prop.computed __type __id "total_iops";
       total_mbps = Prop.computed __type __id "total_mbps";
       total_size_in_tib =
         Prop.computed __type __id "total_size_in_tib";
       total_volume_size_in_gib =
         Prop.computed __type __id "total_volume_size_in_gib";
       volume_group_count =
         Prop.computed __type __id "volume_group_count";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_elastic_san
        (azurerm_elastic_san ?extended_size_in_tib ?id ?tags ?zones
           ?timeouts ~base_size_in_tib ~location ~name
           ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?extended_size_in_tib ?id ?tags ?zones
    ?timeouts ~base_size_in_tib ~location ~name ~resource_group_name
    ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?extended_size_in_tib ?id ?tags ?zones ?timeouts
      ~base_size_in_tib ~location ~name ~resource_group_name ~sku
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_dedicated_host_group = {
  automatic_placement_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  zone : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dedicated_host_group) -> ()

let yojson_of_azurerm_dedicated_host_group =
  (function
   | {
       automatic_placement_enabled = v_automatic_placement_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       platform_fault_domain_count = v_platform_fault_domain_count;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       zone = v_zone;
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
         let arg =
           yojson_of_prop yojson_of_float
             v_platform_fault_domain_count
         in
         ("platform_fault_domain_count", arg) :: bnds
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
         match v_automatic_placement_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic_placement_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_dedicated_host_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dedicated_host_group

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dedicated_host_group ?automatic_placement_enabled ?id
    ?tags ?zone ?timeouts ~location ~name
    ~platform_fault_domain_count ~resource_group_name () :
    azurerm_dedicated_host_group =
  {
    automatic_placement_enabled;
    id;
    location;
    name;
    platform_fault_domain_count;
    resource_group_name;
    tags;
    zone;
    timeouts;
  }

type t = {
  tf_name : string;
  automatic_placement_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  zone : string prop;
}

let make ?automatic_placement_enabled ?id ?tags ?zone ?timeouts
    ~location ~name ~platform_fault_domain_count ~resource_group_name
    __id =
  let __type = "azurerm_dedicated_host_group" in
  let __attrs =
    ({
       tf_name = __id;
       automatic_placement_enabled =
         Prop.computed __type __id "automatic_placement_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       platform_fault_domain_count =
         Prop.computed __type __id "platform_fault_domain_count";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dedicated_host_group
        (azurerm_dedicated_host_group ?automatic_placement_enabled
           ?id ?tags ?zone ?timeouts ~location ~name
           ~platform_fault_domain_count ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic_placement_enabled ?id ?tags ?zone
    ?timeouts ~location ~name ~platform_fault_domain_count
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?automatic_placement_enabled ?id ?tags ?zone ?timeouts
      ~location ~name ~platform_fault_domain_count
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

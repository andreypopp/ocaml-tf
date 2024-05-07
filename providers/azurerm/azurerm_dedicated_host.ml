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

type azurerm_dedicated_host = {
  auto_replace_on_failure : bool prop option; [@option]
  dedicated_host_group_id : string prop;
  id : string prop option; [@option]
  license_type : string prop option; [@option]
  location : string prop;
  name : string prop;
  platform_fault_domain : float prop;
  sku_name : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dedicated_host) -> ()

let yojson_of_azurerm_dedicated_host =
  (function
   | {
       auto_replace_on_failure = v_auto_replace_on_failure;
       dedicated_host_group_id = v_dedicated_host_group_id;
       id = v_id;
       license_type = v_license_type;
       location = v_location;
       name = v_name;
       platform_fault_domain = v_platform_fault_domain;
       sku_name = v_sku_name;
       tags = v_tags;
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
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_platform_fault_domain
         in
         ("platform_fault_domain", arg) :: bnds
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
         match v_license_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_type", arg in
             bnd :: bnds
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
           yojson_of_prop yojson_of_string v_dedicated_host_group_id
         in
         ("dedicated_host_group_id", arg) :: bnds
       in
       let bnds =
         match v_auto_replace_on_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_replace_on_failure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_dedicated_host -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dedicated_host

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dedicated_host ?auto_replace_on_failure ?id ?license_type
    ?tags ?timeouts ~dedicated_host_group_id ~location ~name
    ~platform_fault_domain ~sku_name () : azurerm_dedicated_host =
  {
    auto_replace_on_failure;
    dedicated_host_group_id;
    id;
    license_type;
    location;
    name;
    platform_fault_domain;
    sku_name;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  auto_replace_on_failure : bool prop;
  dedicated_host_group_id : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  name : string prop;
  platform_fault_domain : float prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let make ?auto_replace_on_failure ?id ?license_type ?tags ?timeouts
    ~dedicated_host_group_id ~location ~name ~platform_fault_domain
    ~sku_name __id =
  let __type = "azurerm_dedicated_host" in
  let __attrs =
    ({
       tf_name = __id;
       auto_replace_on_failure =
         Prop.computed __type __id "auto_replace_on_failure";
       dedicated_host_group_id =
         Prop.computed __type __id "dedicated_host_group_id";
       id = Prop.computed __type __id "id";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       platform_fault_domain =
         Prop.computed __type __id "platform_fault_domain";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dedicated_host
        (azurerm_dedicated_host ?auto_replace_on_failure ?id
           ?license_type ?tags ?timeouts ~dedicated_host_group_id
           ~location ~name ~platform_fault_domain ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_replace_on_failure ?id ?license_type
    ?tags ?timeouts ~dedicated_host_group_id ~location ~name
    ~platform_fault_domain ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?auto_replace_on_failure ?id ?license_type ?tags ?timeouts
      ~dedicated_host_group_id ~location ~name ~platform_fault_domain
      ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

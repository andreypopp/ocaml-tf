(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

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

type azurerm_arc_resource_bridge_appliance = {
  distro : string prop;
  id : string prop option; [@option]
  infrastructure_provider : string prop;
  location : string prop;
  name : string prop;
  public_key_base64 : string prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_arc_resource_bridge_appliance) -> ()

let yojson_of_azurerm_arc_resource_bridge_appliance =
  (function
   | {
       distro = v_distro;
       id = v_id;
       infrastructure_provider = v_infrastructure_provider;
       location = v_location;
       name = v_name;
       public_key_base64 = v_public_key_base64;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       identity = v_identity;
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
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_key_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_key_base64", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_infrastructure_provider
         in
         ("infrastructure_provider", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_distro in
         ("distro", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_arc_resource_bridge_appliance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_arc_resource_bridge_appliance

[@@@deriving.end]

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_arc_resource_bridge_appliance ?id ?public_key_base64
    ?tags ?timeouts ~distro ~infrastructure_provider ~location ~name
    ~resource_group_name ~identity () :
    azurerm_arc_resource_bridge_appliance =
  {
    distro;
    id;
    infrastructure_provider;
    location;
    name;
    public_key_base64;
    resource_group_name;
    tags;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  distro : string prop;
  id : string prop;
  infrastructure_provider : string prop;
  location : string prop;
  name : string prop;
  public_key_base64 : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?public_key_base64 ?tags ?timeouts ~distro
    ~infrastructure_provider ~location ~name ~resource_group_name
    ~identity __id =
  let __type = "azurerm_arc_resource_bridge_appliance" in
  let __attrs =
    ({
       tf_name = __id;
       distro = Prop.computed __type __id "distro";
       id = Prop.computed __type __id "id";
       infrastructure_provider =
         Prop.computed __type __id "infrastructure_provider";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_key_base64 =
         Prop.computed __type __id "public_key_base64";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_arc_resource_bridge_appliance
        (azurerm_arc_resource_bridge_appliance ?id ?public_key_base64
           ?tags ?timeouts ~distro ~infrastructure_provider ~location
           ~name ~resource_group_name ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?public_key_base64 ?tags ?timeouts
    ~distro ~infrastructure_provider ~location ~name
    ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?public_key_base64 ?tags ?timeouts ~distro
      ~infrastructure_provider ~location ~name ~resource_group_name
      ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_private_dns_zone_virtual_network_link = {
  id : string prop option; [@option]
  name : string prop;
  private_dns_zone_name : string prop;
  registration_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  virtual_network_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_private_dns_zone_virtual_network_link) -> ()

let yojson_of_azurerm_private_dns_zone_virtual_network_link =
  (function
   | {
       id = v_id;
       name = v_name;
       private_dns_zone_name = v_private_dns_zone_name;
       registration_enabled = v_registration_enabled;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       virtual_network_id = v_virtual_network_id;
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
           yojson_of_prop yojson_of_string v_virtual_network_id
         in
         ("virtual_network_id", arg) :: bnds
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
         match v_registration_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "registration_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_dns_zone_name
         in
         ("private_dns_zone_name", arg) :: bnds
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
    : azurerm_private_dns_zone_virtual_network_link ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_private_dns_zone_virtual_network_link

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_dns_zone_virtual_network_link ?id
    ?registration_enabled ?tags ?timeouts ~name
    ~private_dns_zone_name ~resource_group_name ~virtual_network_id
    () : azurerm_private_dns_zone_virtual_network_link =
  {
    id;
    name;
    private_dns_zone_name;
    registration_enabled;
    resource_group_name;
    tags;
    virtual_network_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  private_dns_zone_name : string prop;
  registration_enabled : bool prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  virtual_network_id : string prop;
}

let make ?id ?registration_enabled ?tags ?timeouts ~name
    ~private_dns_zone_name ~resource_group_name ~virtual_network_id
    __id =
  let __type = "azurerm_private_dns_zone_virtual_network_link" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       private_dns_zone_name =
         Prop.computed __type __id "private_dns_zone_name";
       registration_enabled =
         Prop.computed __type __id "registration_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_dns_zone_virtual_network_link
        (azurerm_private_dns_zone_virtual_network_link ?id
           ?registration_enabled ?tags ?timeouts ~name
           ~private_dns_zone_name ~resource_group_name
           ~virtual_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?registration_enabled ?tags ?timeouts
    ~name ~private_dns_zone_name ~resource_group_name
    ~virtual_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?registration_enabled ?tags ?timeouts ~name
      ~private_dns_zone_name ~resource_group_name ~virtual_network_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

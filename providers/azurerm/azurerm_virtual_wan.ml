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

type azurerm_virtual_wan = {
  allow_branch_to_branch_traffic : bool prop option; [@option]
  disable_vpn_encryption : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  office365_local_breakout_category : string prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_wan) -> ()

let yojson_of_azurerm_virtual_wan =
  (function
   | {
       allow_branch_to_branch_traffic =
         v_allow_branch_to_branch_traffic;
       disable_vpn_encryption = v_disable_vpn_encryption;
       id = v_id;
       location = v_location;
       name = v_name;
       office365_local_breakout_category =
         v_office365_local_breakout_category;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       type_ = v_type_;
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
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_office365_local_breakout_category with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "office365_local_breakout_category", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_vpn_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_vpn_encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_branch_to_branch_traffic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_branch_to_branch_traffic", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_wan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_wan

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_wan ?allow_branch_to_branch_traffic
    ?disable_vpn_encryption ?id ?office365_local_breakout_category
    ?tags ?type_ ?timeouts ~location ~name ~resource_group_name () :
    azurerm_virtual_wan =
  {
    allow_branch_to_branch_traffic;
    disable_vpn_encryption;
    id;
    location;
    name;
    office365_local_breakout_category;
    resource_group_name;
    tags;
    type_;
    timeouts;
  }

type t = {
  allow_branch_to_branch_traffic : bool prop;
  disable_vpn_encryption : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  office365_local_breakout_category : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
}

let make ?allow_branch_to_branch_traffic ?disable_vpn_encryption ?id
    ?office365_local_breakout_category ?tags ?type_ ?timeouts
    ~location ~name ~resource_group_name __id =
  let __type = "azurerm_virtual_wan" in
  let __attrs =
    ({
       allow_branch_to_branch_traffic =
         Prop.computed __type __id "allow_branch_to_branch_traffic";
       disable_vpn_encryption =
         Prop.computed __type __id "disable_vpn_encryption";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       office365_local_breakout_category =
         Prop.computed __type __id
           "office365_local_breakout_category";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_wan
        (azurerm_virtual_wan ?allow_branch_to_branch_traffic
           ?disable_vpn_encryption ?id
           ?office365_local_breakout_category ?tags ?type_ ?timeouts
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_branch_to_branch_traffic
    ?disable_vpn_encryption ?id ?office365_local_breakout_category
    ?tags ?type_ ?timeouts ~location ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?allow_branch_to_branch_traffic ?disable_vpn_encryption ?id
      ?office365_local_breakout_category ?tags ?type_ ?timeouts
      ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

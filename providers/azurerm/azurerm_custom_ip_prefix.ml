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

type azurerm_custom_ip_prefix = {
  cidr : string prop;
  commissioning_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  internet_advertising_disabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  parent_custom_ip_prefix_id : string prop option; [@option]
  resource_group_name : string prop;
  roa_validity_end_date : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  wan_validation_signed_message : string prop option; [@option]
  zones : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_custom_ip_prefix) -> ()

let yojson_of_azurerm_custom_ip_prefix =
  (function
   | {
       cidr = v_cidr;
       commissioning_enabled = v_commissioning_enabled;
       id = v_id;
       internet_advertising_disabled =
         v_internet_advertising_disabled;
       location = v_location;
       name = v_name;
       parent_custom_ip_prefix_id = v_parent_custom_ip_prefix_id;
       resource_group_name = v_resource_group_name;
       roa_validity_end_date = v_roa_validity_end_date;
       tags = v_tags;
       wan_validation_signed_message =
         v_wan_validation_signed_message;
       zones = v_zones;
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
         match v_wan_validation_signed_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "wan_validation_signed_message", arg in
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
         match v_roa_validity_end_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "roa_validity_end_date", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_parent_custom_ip_prefix_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_custom_ip_prefix_id", arg in
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
         match v_internet_advertising_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internet_advertising_disabled", arg in
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
         match v_commissioning_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "commissioning_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_custom_ip_prefix -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_custom_ip_prefix

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_custom_ip_prefix ?commissioning_enabled ?id
    ?internet_advertising_disabled ?parent_custom_ip_prefix_id
    ?roa_validity_end_date ?tags ?wan_validation_signed_message
    ?zones ?timeouts ~cidr ~location ~name ~resource_group_name () :
    azurerm_custom_ip_prefix =
  {
    cidr;
    commissioning_enabled;
    id;
    internet_advertising_disabled;
    location;
    name;
    parent_custom_ip_prefix_id;
    resource_group_name;
    roa_validity_end_date;
    tags;
    wan_validation_signed_message;
    zones;
    timeouts;
  }

type t = {
  tf_name : string;
  cidr : string prop;
  commissioning_enabled : bool prop;
  id : string prop;
  internet_advertising_disabled : bool prop;
  location : string prop;
  name : string prop;
  parent_custom_ip_prefix_id : string prop;
  resource_group_name : string prop;
  roa_validity_end_date : string prop;
  tags : string Tf_core.assoc prop;
  wan_validation_signed_message : string prop;
  zones : string list prop;
}

let make ?commissioning_enabled ?id ?internet_advertising_disabled
    ?parent_custom_ip_prefix_id ?roa_validity_end_date ?tags
    ?wan_validation_signed_message ?zones ?timeouts ~cidr ~location
    ~name ~resource_group_name __id =
  let __type = "azurerm_custom_ip_prefix" in
  let __attrs =
    ({
       tf_name = __id;
       cidr = Prop.computed __type __id "cidr";
       commissioning_enabled =
         Prop.computed __type __id "commissioning_enabled";
       id = Prop.computed __type __id "id";
       internet_advertising_disabled =
         Prop.computed __type __id "internet_advertising_disabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent_custom_ip_prefix_id =
         Prop.computed __type __id "parent_custom_ip_prefix_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       roa_validity_end_date =
         Prop.computed __type __id "roa_validity_end_date";
       tags = Prop.computed __type __id "tags";
       wan_validation_signed_message =
         Prop.computed __type __id "wan_validation_signed_message";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_custom_ip_prefix
        (azurerm_custom_ip_prefix ?commissioning_enabled ?id
           ?internet_advertising_disabled ?parent_custom_ip_prefix_id
           ?roa_validity_end_date ?tags
           ?wan_validation_signed_message ?zones ?timeouts ~cidr
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?commissioning_enabled ?id
    ?internet_advertising_disabled ?parent_custom_ip_prefix_id
    ?roa_validity_end_date ?tags ?wan_validation_signed_message
    ?zones ?timeouts ~cidr ~location ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?commissioning_enabled ?id ?internet_advertising_disabled
      ?parent_custom_ip_prefix_id ?roa_validity_end_date ?tags
      ?wan_validation_signed_message ?zones ?timeouts ~cidr ~location
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

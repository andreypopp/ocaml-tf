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

type azurerm_arc_machine_extension = {
  arc_machine_id : string prop;
  automatic_upgrade_enabled : bool prop option; [@option]
  force_update_tag : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  protected_settings : string prop option; [@option]
  publisher : string prop;
  settings : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  type_handler_version : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_arc_machine_extension) -> ()

let yojson_of_azurerm_arc_machine_extension =
  (function
   | {
       arc_machine_id = v_arc_machine_id;
       automatic_upgrade_enabled = v_automatic_upgrade_enabled;
       force_update_tag = v_force_update_tag;
       id = v_id;
       location = v_location;
       name = v_name;
       protected_settings = v_protected_settings;
       publisher = v_publisher;
       settings = v_settings;
       tags = v_tags;
       type_ = v_type_;
       type_handler_version = v_type_handler_version;
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
         match v_type_handler_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_handler_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "settings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         match v_protected_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protected_settings", arg in
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
         match v_force_update_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "force_update_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_upgrade_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic_upgrade_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_arc_machine_id
         in
         ("arc_machine_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_arc_machine_extension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_arc_machine_extension

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_arc_machine_extension ?automatic_upgrade_enabled
    ?force_update_tag ?id ?protected_settings ?settings ?tags
    ?type_handler_version ?timeouts ~arc_machine_id ~location ~name
    ~publisher ~type_ () : azurerm_arc_machine_extension =
  {
    arc_machine_id;
    automatic_upgrade_enabled;
    force_update_tag;
    id;
    location;
    name;
    protected_settings;
    publisher;
    settings;
    tags;
    type_;
    type_handler_version;
    timeouts;
  }

type t = {
  tf_name : string;
  arc_machine_id : string prop;
  automatic_upgrade_enabled : bool prop;
  force_update_tag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  protected_settings : string prop;
  publisher : string prop;
  settings : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  type_handler_version : string prop;
}

let make ?automatic_upgrade_enabled ?force_update_tag ?id
    ?protected_settings ?settings ?tags ?type_handler_version
    ?timeouts ~arc_machine_id ~location ~name ~publisher ~type_ __id
    =
  let __type = "azurerm_arc_machine_extension" in
  let __attrs =
    ({
       tf_name = __id;
       arc_machine_id = Prop.computed __type __id "arc_machine_id";
       automatic_upgrade_enabled =
         Prop.computed __type __id "automatic_upgrade_enabled";
       force_update_tag =
         Prop.computed __type __id "force_update_tag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       protected_settings =
         Prop.computed __type __id "protected_settings";
       publisher = Prop.computed __type __id "publisher";
       settings = Prop.computed __type __id "settings";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       type_handler_version =
         Prop.computed __type __id "type_handler_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_arc_machine_extension
        (azurerm_arc_machine_extension ?automatic_upgrade_enabled
           ?force_update_tag ?id ?protected_settings ?settings ?tags
           ?type_handler_version ?timeouts ~arc_machine_id ~location
           ~name ~publisher ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic_upgrade_enabled ?force_update_tag
    ?id ?protected_settings ?settings ?tags ?type_handler_version
    ?timeouts ~arc_machine_id ~location ~name ~publisher ~type_ __id
    =
  let (r : _ Tf_core.resource) =
    make ?automatic_upgrade_enabled ?force_update_tag ?id
      ?protected_settings ?settings ?tags ?type_handler_version
      ?timeouts ~arc_machine_id ~location ~name ~publisher ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

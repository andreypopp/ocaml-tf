(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type policy = {
  name : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy) -> ()

let yojson_of_policy =
  (function
   | { name = v_name; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy

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

type azurerm_vpn_server_configuration_policy_group = {
  id : string prop option; [@option]
  is_default : bool prop option; [@option]
  name : string prop;
  priority : float prop option; [@option]
  vpn_server_configuration_id : string prop;
  policy : policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_vpn_server_configuration_policy_group) -> ()

let yojson_of_azurerm_vpn_server_configuration_policy_group =
  (function
   | {
       id = v_id;
       is_default = v_is_default;
       name = v_name;
       priority = v_priority;
       vpn_server_configuration_id = v_vpn_server_configuration_id;
       policy = v_policy;
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
         let arg = yojson_of_list yojson_of_policy v_policy in
         ("policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_vpn_server_configuration_id
         in
         ("vpn_server_configuration_id", arg) :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_default", arg in
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
       `Assoc bnds
    : azurerm_vpn_server_configuration_policy_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_vpn_server_configuration_policy_group

[@@@deriving.end]

let policy ~name ~type_ ~value () : policy = { name; type_; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_vpn_server_configuration_policy_group ?id ?is_default
    ?priority ?timeouts ~name ~vpn_server_configuration_id ~policy ()
    : azurerm_vpn_server_configuration_policy_group =
  {
    id;
    is_default;
    name;
    priority;
    vpn_server_configuration_id;
    policy;
    timeouts;
  }

type t = {
  id : string prop;
  is_default : bool prop;
  name : string prop;
  priority : float prop;
  vpn_server_configuration_id : string prop;
}

let make ?id ?is_default ?priority ?timeouts ~name
    ~vpn_server_configuration_id ~policy __id =
  let __type = "azurerm_vpn_server_configuration_policy_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       vpn_server_configuration_id =
         Prop.computed __type __id "vpn_server_configuration_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_vpn_server_configuration_policy_group
        (azurerm_vpn_server_configuration_policy_group ?id
           ?is_default ?priority ?timeouts ~name
           ~vpn_server_configuration_id ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_default ?priority ?timeouts ~name
    ~vpn_server_configuration_id ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_default ?priority ?timeouts ~name
      ~vpn_server_configuration_id ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

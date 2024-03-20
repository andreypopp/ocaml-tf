(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_rule = { ip_mask : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_rule) -> ()

let yojson_of_ip_rule =
  (function
   | { ip_mask = v_ip_mask; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_mask in
         ("ip_mask", arg) :: bnds
       in
       `Assoc bnds
    : ip_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_rule

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

type azurerm_iotcentral_application_network_rule_set = {
  apply_to_device : bool prop option; [@option]
  default_action : string prop option; [@option]
  id : string prop option; [@option]
  iotcentral_application_id : string prop;
  ip_rule : ip_rule list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_iotcentral_application_network_rule_set) -> ()

let yojson_of_azurerm_iotcentral_application_network_rule_set =
  (function
   | {
       apply_to_device = v_apply_to_device;
       default_action = v_default_action;
       id = v_id;
       iotcentral_application_id = v_iotcentral_application_id;
       ip_rule = v_ip_rule;
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
         let arg = yojson_of_list yojson_of_ip_rule v_ip_rule in
         ("ip_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_iotcentral_application_id
         in
         ("iotcentral_application_id", arg) :: bnds
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
         match v_default_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apply_to_device with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "apply_to_device", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_iotcentral_application_network_rule_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iotcentral_application_network_rule_set

[@@@deriving.end]

let ip_rule ~ip_mask ~name () : ip_rule = { ip_mask; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iotcentral_application_network_rule_set ?apply_to_device
    ?default_action ?id ?timeouts ~iotcentral_application_id ~ip_rule
    () : azurerm_iotcentral_application_network_rule_set =
  {
    apply_to_device;
    default_action;
    id;
    iotcentral_application_id;
    ip_rule;
    timeouts;
  }

type t = {
  apply_to_device : bool prop;
  default_action : string prop;
  id : string prop;
  iotcentral_application_id : string prop;
}

let make ?apply_to_device ?default_action ?id ?timeouts
    ~iotcentral_application_id ~ip_rule __id =
  let __type = "azurerm_iotcentral_application_network_rule_set" in
  let __attrs =
    ({
       apply_to_device = Prop.computed __type __id "apply_to_device";
       default_action = Prop.computed __type __id "default_action";
       id = Prop.computed __type __id "id";
       iotcentral_application_id =
         Prop.computed __type __id "iotcentral_application_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iotcentral_application_network_rule_set
        (azurerm_iotcentral_application_network_rule_set
           ?apply_to_device ?default_action ?id ?timeouts
           ~iotcentral_application_id ~ip_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?apply_to_device ?default_action ?id
    ?timeouts ~iotcentral_application_id ~ip_rule __id =
  let (r : _ Tf_core.resource) =
    make ?apply_to_device ?default_action ?id ?timeouts
      ~iotcentral_application_id ~ip_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

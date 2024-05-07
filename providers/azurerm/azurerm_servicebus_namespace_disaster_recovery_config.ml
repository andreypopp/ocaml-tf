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

type azurerm_servicebus_namespace_disaster_recovery_config = {
  alias_authorization_rule_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  partner_namespace_id : string prop;
  primary_namespace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_servicebus_namespace_disaster_recovery_config) ->
  ()

let yojson_of_azurerm_servicebus_namespace_disaster_recovery_config =
  (function
   | {
       alias_authorization_rule_id = v_alias_authorization_rule_id;
       id = v_id;
       name = v_name;
       partner_namespace_id = v_partner_namespace_id;
       primary_namespace_id = v_primary_namespace_id;
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
           yojson_of_prop yojson_of_string v_primary_namespace_id
         in
         ("primary_namespace_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_partner_namespace_id
         in
         ("partner_namespace_id", arg) :: bnds
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
       let bnds =
         match v_alias_authorization_rule_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alias_authorization_rule_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_servicebus_namespace_disaster_recovery_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_servicebus_namespace_disaster_recovery_config

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_servicebus_namespace_disaster_recovery_config
    ?alias_authorization_rule_id ?id ?timeouts ~name
    ~partner_namespace_id ~primary_namespace_id () :
    azurerm_servicebus_namespace_disaster_recovery_config =
  {
    alias_authorization_rule_id;
    id;
    name;
    partner_namespace_id;
    primary_namespace_id;
    timeouts;
  }

type t = {
  tf_name : string;
  alias_authorization_rule_id : string prop;
  default_primary_key : string prop;
  default_secondary_key : string prop;
  id : string prop;
  name : string prop;
  partner_namespace_id : string prop;
  primary_connection_string_alias : string prop;
  primary_namespace_id : string prop;
  secondary_connection_string_alias : string prop;
}

let make ?alias_authorization_rule_id ?id ?timeouts ~name
    ~partner_namespace_id ~primary_namespace_id __id =
  let __type =
    "azurerm_servicebus_namespace_disaster_recovery_config"
  in
  let __attrs =
    ({
       tf_name = __id;
       alias_authorization_rule_id =
         Prop.computed __type __id "alias_authorization_rule_id";
       default_primary_key =
         Prop.computed __type __id "default_primary_key";
       default_secondary_key =
         Prop.computed __type __id "default_secondary_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       partner_namespace_id =
         Prop.computed __type __id "partner_namespace_id";
       primary_connection_string_alias =
         Prop.computed __type __id "primary_connection_string_alias";
       primary_namespace_id =
         Prop.computed __type __id "primary_namespace_id";
       secondary_connection_string_alias =
         Prop.computed __type __id
           "secondary_connection_string_alias";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_namespace_disaster_recovery_config
        (azurerm_servicebus_namespace_disaster_recovery_config
           ?alias_authorization_rule_id ?id ?timeouts ~name
           ~partner_namespace_id ~primary_namespace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?alias_authorization_rule_id ?id ?timeouts
    ~name ~partner_namespace_id ~primary_namespace_id __id =
  let (r : _ Tf_core.resource) =
    make ?alias_authorization_rule_id ?id ?timeouts ~name
      ~partner_namespace_id ~primary_namespace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

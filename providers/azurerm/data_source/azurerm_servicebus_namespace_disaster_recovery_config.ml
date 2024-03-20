(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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
  namespace_id : string prop option; [@option]
  namespace_name : string prop option; [@option]
  resource_group_name : string prop option; [@option]
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
       namespace_id = v_namespace_id;
       namespace_name = v_namespace_name;
       resource_group_name = v_resource_group_name;
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
         match v_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace_id", arg in
             bnd :: bnds
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

let timeouts ?read () : timeouts = { read }

let azurerm_servicebus_namespace_disaster_recovery_config
    ?alias_authorization_rule_id ?id ?namespace_id ?namespace_name
    ?resource_group_name ?timeouts ~name () :
    azurerm_servicebus_namespace_disaster_recovery_config =
  {
    alias_authorization_rule_id;
    id;
    name;
    namespace_id;
    namespace_name;
    resource_group_name;
    timeouts;
  }

type t = {
  alias_authorization_rule_id : string prop;
  default_primary_key : string prop;
  default_secondary_key : string prop;
  id : string prop;
  name : string prop;
  namespace_id : string prop;
  namespace_name : string prop;
  partner_namespace_id : string prop;
  primary_connection_string_alias : string prop;
  resource_group_name : string prop;
  secondary_connection_string_alias : string prop;
}

let make ?alias_authorization_rule_id ?id ?namespace_id
    ?namespace_name ?resource_group_name ?timeouts ~name __id =
  let __type =
    "azurerm_servicebus_namespace_disaster_recovery_config"
  in
  let __attrs =
    ({
       alias_authorization_rule_id =
         Prop.computed __type __id "alias_authorization_rule_id";
       default_primary_key =
         Prop.computed __type __id "default_primary_key";
       default_secondary_key =
         Prop.computed __type __id "default_secondary_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace_id = Prop.computed __type __id "namespace_id";
       namespace_name = Prop.computed __type __id "namespace_name";
       partner_namespace_id =
         Prop.computed __type __id "partner_namespace_id";
       primary_connection_string_alias =
         Prop.computed __type __id "primary_connection_string_alias";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
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
           ?alias_authorization_rule_id ?id ?namespace_id
           ?namespace_name ?resource_group_name ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?alias_authorization_rule_id ?id
    ?namespace_id ?namespace_name ?resource_group_name ?timeouts
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?alias_authorization_rule_id ?id ?namespace_id
      ?namespace_name ?resource_group_name ?timeouts ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

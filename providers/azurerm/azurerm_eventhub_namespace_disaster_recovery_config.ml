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

type azurerm_eventhub_namespace_disaster_recovery_config = {
  id : string prop option; [@option]
  name : string prop;
  namespace_name : string prop;
  partner_namespace_id : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_eventhub_namespace_disaster_recovery_config) -> ()

let yojson_of_azurerm_eventhub_namespace_disaster_recovery_config =
  (function
   | {
       id = v_id;
       name = v_name;
       namespace_name = v_namespace_name;
       partner_namespace_id = v_partner_namespace_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_partner_namespace_id
         in
         ("partner_namespace_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_namespace_name
         in
         ("namespace_name", arg) :: bnds
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
    : azurerm_eventhub_namespace_disaster_recovery_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_eventhub_namespace_disaster_recovery_config

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_eventhub_namespace_disaster_recovery_config ?id ?timeouts
    ~name ~namespace_name ~partner_namespace_id ~resource_group_name
    () : azurerm_eventhub_namespace_disaster_recovery_config =
  {
    id;
    name;
    namespace_name;
    partner_namespace_id;
    resource_group_name;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  namespace_name : string prop;
  partner_namespace_id : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~name ~namespace_name ~partner_namespace_id
    ~resource_group_name __id =
  let __type =
    "azurerm_eventhub_namespace_disaster_recovery_config"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace_name = Prop.computed __type __id "namespace_name";
       partner_namespace_id =
         Prop.computed __type __id "partner_namespace_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventhub_namespace_disaster_recovery_config
        (azurerm_eventhub_namespace_disaster_recovery_config ?id
           ?timeouts ~name ~namespace_name ~partner_namespace_id
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~namespace_name
    ~partner_namespace_id ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~namespace_name ~partner_namespace_id
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

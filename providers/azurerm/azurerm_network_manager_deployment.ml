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

type azurerm_network_manager_deployment = {
  configuration_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : string prop option; [@option]
  location : string prop;
  network_manager_id : string prop;
  scope_access : string prop;
  triggers : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_network_manager_deployment) -> ()

let yojson_of_azurerm_network_manager_deployment =
  (function
   | {
       configuration_ids = v_configuration_ids;
       id = v_id;
       location = v_location;
       network_manager_id = v_network_manager_id;
       scope_access = v_scope_access;
       triggers = v_triggers;
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
         match v_triggers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "triggers", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope_access in
         ("scope_access", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_manager_id
         in
         ("network_manager_id", arg) :: bnds
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
         if Stdlib.( = ) [] v_configuration_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_configuration_ids
           in
           let bnd = "configuration_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azurerm_network_manager_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_manager_deployment

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_manager_deployment ?id ?triggers ?timeouts
    ~configuration_ids ~location ~network_manager_id ~scope_access ()
    : azurerm_network_manager_deployment =
  {
    configuration_ids;
    id;
    location;
    network_manager_id;
    scope_access;
    triggers;
    timeouts;
  }

type t = {
  tf_name : string;
  configuration_ids : string list prop;
  id : string prop;
  location : string prop;
  network_manager_id : string prop;
  scope_access : string prop;
  triggers : string Tf_core.assoc prop;
}

let make ?id ?triggers ?timeouts ~configuration_ids ~location
    ~network_manager_id ~scope_access __id =
  let __type = "azurerm_network_manager_deployment" in
  let __attrs =
    ({
       tf_name = __id;
       configuration_ids =
         Prop.computed __type __id "configuration_ids";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       network_manager_id =
         Prop.computed __type __id "network_manager_id";
       scope_access = Prop.computed __type __id "scope_access";
       triggers = Prop.computed __type __id "triggers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_manager_deployment
        (azurerm_network_manager_deployment ?id ?triggers ?timeouts
           ~configuration_ids ~location ~network_manager_id
           ~scope_access ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?triggers ?timeouts ~configuration_ids
    ~location ~network_manager_id ~scope_access __id =
  let (r : _ Tf_core.resource) =
    make ?id ?triggers ?timeouts ~configuration_ids ~location
      ~network_manager_id ~scope_access __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

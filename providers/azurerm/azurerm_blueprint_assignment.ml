(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

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

type azurerm_blueprint_assignment = {
  id : string prop option; [@option]
  location : string prop;
  lock_exclude_actions : string prop list option; [@option]
  lock_exclude_principals : string prop list option; [@option]
  lock_mode : string prop option; [@option]
  name : string prop;
  parameter_values : string prop option; [@option]
  resource_groups : string prop option; [@option]
  target_subscription_id : string prop;
  version_id : string prop;
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_blueprint_assignment) -> ()

let yojson_of_azurerm_blueprint_assignment =
  (function
   | {
       id = v_id;
       location = v_location;
       lock_exclude_actions = v_lock_exclude_actions;
       lock_exclude_principals = v_lock_exclude_principals;
       lock_mode = v_lock_mode;
       name = v_name;
       parameter_values = v_parameter_values;
       resource_groups = v_resource_groups;
       target_subscription_id = v_target_subscription_id;
       version_id = v_version_id;
       identity = v_identity;
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
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version_id in
         ("version_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_subscription_id
         in
         ("target_subscription_id", arg) :: bnds
       in
       let bnds =
         match v_resource_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameter_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameter_values", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_lock_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lock_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lock_exclude_principals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "lock_exclude_principals", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lock_exclude_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "lock_exclude_actions", arg in
             bnd :: bnds
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
       `Assoc bnds
    : azurerm_blueprint_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_blueprint_assignment

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_blueprint_assignment ?id ?lock_exclude_actions
    ?lock_exclude_principals ?lock_mode ?parameter_values
    ?resource_groups ?timeouts ~location ~name
    ~target_subscription_id ~version_id ~identity () :
    azurerm_blueprint_assignment =
  {
    id;
    location;
    lock_exclude_actions;
    lock_exclude_principals;
    lock_mode;
    name;
    parameter_values;
    resource_groups;
    target_subscription_id;
    version_id;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  blueprint_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  lock_exclude_actions : string list prop;
  lock_exclude_principals : string list prop;
  lock_mode : string prop;
  name : string prop;
  parameter_values : string prop;
  resource_groups : string prop;
  target_subscription_id : string prop;
  type_ : string prop;
  version_id : string prop;
}

let make ?id ?lock_exclude_actions ?lock_exclude_principals
    ?lock_mode ?parameter_values ?resource_groups ?timeouts ~location
    ~name ~target_subscription_id ~version_id ~identity __id =
  let __type = "azurerm_blueprint_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       blueprint_name = Prop.computed __type __id "blueprint_name";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       lock_exclude_actions =
         Prop.computed __type __id "lock_exclude_actions";
       lock_exclude_principals =
         Prop.computed __type __id "lock_exclude_principals";
       lock_mode = Prop.computed __type __id "lock_mode";
       name = Prop.computed __type __id "name";
       parameter_values =
         Prop.computed __type __id "parameter_values";
       resource_groups = Prop.computed __type __id "resource_groups";
       target_subscription_id =
         Prop.computed __type __id "target_subscription_id";
       type_ = Prop.computed __type __id "type";
       version_id = Prop.computed __type __id "version_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_blueprint_assignment
        (azurerm_blueprint_assignment ?id ?lock_exclude_actions
           ?lock_exclude_principals ?lock_mode ?parameter_values
           ?resource_groups ?timeouts ~location ~name
           ~target_subscription_id ~version_id ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?lock_exclude_actions
    ?lock_exclude_principals ?lock_mode ?parameter_values
    ?resource_groups ?timeouts ~location ~name
    ~target_subscription_id ~version_id ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?lock_exclude_actions ?lock_exclude_principals
      ?lock_mode ?parameter_values ?resource_groups ?timeouts
      ~location ~name ~target_subscription_id ~version_id ~identity
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

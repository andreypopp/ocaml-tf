(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authorization = {
  delegated_role_definition_ids : string prop list option; [@option]
  principal_display_name : string prop option; [@option]
  principal_id : string prop;
  role_definition_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization) -> ()

let yojson_of_authorization =
  (function
   | {
       delegated_role_definition_ids =
         v_delegated_role_definition_ids;
       principal_display_name = v_principal_display_name;
       principal_id = v_principal_id;
       role_definition_id = v_role_definition_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_role_definition_id
         in
         ("role_definition_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         match v_principal_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "principal_display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delegated_role_definition_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "delegated_role_definition_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization

[@@@deriving.end]

type eligible_authorization__just_in_time_access_policy__approver = {
  principal_display_name : string prop option; [@option]
  principal_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       eligible_authorization__just_in_time_access_policy__approver) ->
  ()

let yojson_of_eligible_authorization__just_in_time_access_policy__approver
    =
  (function
   | {
       principal_display_name = v_principal_display_name;
       principal_id = v_principal_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         match v_principal_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "principal_display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eligible_authorization__just_in_time_access_policy__approver ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_eligible_authorization__just_in_time_access_policy__approver

[@@@deriving.end]

type eligible_authorization__just_in_time_access_policy = {
  maximum_activation_duration : string prop option; [@option]
  multi_factor_auth_provider : string prop option; [@option]
  approver :
    eligible_authorization__just_in_time_access_policy__approver list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : eligible_authorization__just_in_time_access_policy) -> ()

let yojson_of_eligible_authorization__just_in_time_access_policy =
  (function
   | {
       maximum_activation_duration = v_maximum_activation_duration;
       multi_factor_auth_provider = v_multi_factor_auth_provider;
       approver = v_approver;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eligible_authorization__just_in_time_access_policy__approver
             v_approver
         in
         ("approver", arg) :: bnds
       in
       let bnds =
         match v_multi_factor_auth_provider with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "multi_factor_auth_provider", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_activation_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maximum_activation_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eligible_authorization__just_in_time_access_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eligible_authorization__just_in_time_access_policy

[@@@deriving.end]

type eligible_authorization = {
  principal_display_name : string prop option; [@option]
  principal_id : string prop;
  role_definition_id : string prop;
  just_in_time_access_policy :
    eligible_authorization__just_in_time_access_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eligible_authorization) -> ()

let yojson_of_eligible_authorization =
  (function
   | {
       principal_display_name = v_principal_display_name;
       principal_id = v_principal_id;
       role_definition_id = v_role_definition_id;
       just_in_time_access_policy = v_just_in_time_access_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eligible_authorization__just_in_time_access_policy
             v_just_in_time_access_policy
         in
         ("just_in_time_access_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_role_definition_id
         in
         ("role_definition_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         match v_principal_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "principal_display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eligible_authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eligible_authorization

[@@@deriving.end]

type plan = {
  name : string prop;
  product : string prop;
  publisher : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : plan) -> ()

let yojson_of_plan =
  (function
   | {
       name = v_name;
       product = v_product;
       publisher = v_publisher;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product in
         ("product", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_plan

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

type azurerm_lighthouse_definition = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  lighthouse_definition_id : string prop option; [@option]
  managing_tenant_id : string prop;
  name : string prop;
  scope : string prop;
  authorization : authorization list;
  eligible_authorization : eligible_authorization list;
  plan : plan list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lighthouse_definition) -> ()

let yojson_of_azurerm_lighthouse_definition =
  (function
   | {
       description = v_description;
       id = v_id;
       lighthouse_definition_id = v_lighthouse_definition_id;
       managing_tenant_id = v_managing_tenant_id;
       name = v_name;
       scope = v_scope;
       authorization = v_authorization;
       eligible_authorization = v_eligible_authorization;
       plan = v_plan;
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
         let arg = yojson_of_list yojson_of_plan v_plan in
         ("plan", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_eligible_authorization
             v_eligible_authorization
         in
         ("eligible_authorization", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authorization v_authorization
         in
         ("authorization", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_managing_tenant_id
         in
         ("managing_tenant_id", arg) :: bnds
       in
       let bnds =
         match v_lighthouse_definition_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lighthouse_definition_id", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_lighthouse_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lighthouse_definition

[@@@deriving.end]

let authorization ?delegated_role_definition_ids
    ?principal_display_name ~principal_id ~role_definition_id () :
    authorization =
  {
    delegated_role_definition_ids;
    principal_display_name;
    principal_id;
    role_definition_id;
  }

let eligible_authorization__just_in_time_access_policy__approver
    ?principal_display_name ~principal_id () :
    eligible_authorization__just_in_time_access_policy__approver =
  { principal_display_name; principal_id }

let eligible_authorization__just_in_time_access_policy
    ?maximum_activation_duration ?multi_factor_auth_provider
    ~approver () : eligible_authorization__just_in_time_access_policy
    =
  {
    maximum_activation_duration;
    multi_factor_auth_provider;
    approver;
  }

let eligible_authorization ?principal_display_name ~principal_id
    ~role_definition_id ~just_in_time_access_policy () :
    eligible_authorization =
  {
    principal_display_name;
    principal_id;
    role_definition_id;
    just_in_time_access_policy;
  }

let plan ~name ~product ~publisher ~version () : plan =
  { name; product; publisher; version }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lighthouse_definition ?description ?id
    ?lighthouse_definition_id ?timeouts ~managing_tenant_id ~name
    ~scope ~authorization ~eligible_authorization ~plan () :
    azurerm_lighthouse_definition =
  {
    description;
    id;
    lighthouse_definition_id;
    managing_tenant_id;
    name;
    scope;
    authorization;
    eligible_authorization;
    plan;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  lighthouse_definition_id : string prop;
  managing_tenant_id : string prop;
  name : string prop;
  scope : string prop;
}

let make ?description ?id ?lighthouse_definition_id ?timeouts
    ~managing_tenant_id ~name ~scope ~authorization
    ~eligible_authorization ~plan __id =
  let __type = "azurerm_lighthouse_definition" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       lighthouse_definition_id =
         Prop.computed __type __id "lighthouse_definition_id";
       managing_tenant_id =
         Prop.computed __type __id "managing_tenant_id";
       name = Prop.computed __type __id "name";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lighthouse_definition
        (azurerm_lighthouse_definition ?description ?id
           ?lighthouse_definition_id ?timeouts ~managing_tenant_id
           ~name ~scope ~authorization ~eligible_authorization ~plan
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?lighthouse_definition_id
    ?timeouts ~managing_tenant_id ~name ~scope ~authorization
    ~eligible_authorization ~plan __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?lighthouse_definition_id ?timeouts
      ~managing_tenant_id ~name ~scope ~authorization
      ~eligible_authorization ~plan __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

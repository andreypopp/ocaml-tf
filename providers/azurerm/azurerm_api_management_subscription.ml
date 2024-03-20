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

type azurerm_api_management_subscription = {
  allow_tracing : bool prop option; [@option]
  api_id : string prop option; [@option]
  api_management_name : string prop;
  display_name : string prop;
  id : string prop option; [@option]
  primary_key : string prop option; [@option]
  product_id : string prop option; [@option]
  resource_group_name : string prop;
  secondary_key : string prop option; [@option]
  state : string prop option; [@option]
  subscription_id : string prop option; [@option]
  user_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_subscription) -> ()

let yojson_of_azurerm_api_management_subscription =
  (function
   | {
       allow_tracing = v_allow_tracing;
       api_id = v_api_id;
       api_management_name = v_api_management_name;
       display_name = v_display_name;
       id = v_id;
       primary_key = v_primary_key;
       product_id = v_product_id;
       resource_group_name = v_resource_group_name;
       secondary_key = v_secondary_key;
       state = v_state;
       subscription_id = v_subscription_id;
       user_id = v_user_id;
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
         match v_user_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subscription_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subscription_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secondary_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secondary_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_product_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "product_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_key", arg in
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       let bnds =
         match v_api_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_tracing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_tracing", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_subscription

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_subscription ?allow_tracing ?api_id ?id
    ?primary_key ?product_id ?secondary_key ?state ?subscription_id
    ?user_id ?timeouts ~api_management_name ~display_name
    ~resource_group_name () : azurerm_api_management_subscription =
  {
    allow_tracing;
    api_id;
    api_management_name;
    display_name;
    id;
    primary_key;
    product_id;
    resource_group_name;
    secondary_key;
    state;
    subscription_id;
    user_id;
    timeouts;
  }

type t = {
  allow_tracing : bool prop;
  api_id : string prop;
  api_management_name : string prop;
  display_name : string prop;
  id : string prop;
  primary_key : string prop;
  product_id : string prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  state : string prop;
  subscription_id : string prop;
  user_id : string prop;
}

let make ?allow_tracing ?api_id ?id ?primary_key ?product_id
    ?secondary_key ?state ?subscription_id ?user_id ?timeouts
    ~api_management_name ~display_name ~resource_group_name __id =
  let __type = "azurerm_api_management_subscription" in
  let __attrs =
    ({
       allow_tracing = Prop.computed __type __id "allow_tracing";
       api_id = Prop.computed __type __id "api_id";
       api_management_name =
         Prop.computed __type __id "api_management_name";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       primary_key = Prop.computed __type __id "primary_key";
       product_id = Prop.computed __type __id "product_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_key = Prop.computed __type __id "secondary_key";
       state = Prop.computed __type __id "state";
       subscription_id = Prop.computed __type __id "subscription_id";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_subscription
        (azurerm_api_management_subscription ?allow_tracing ?api_id
           ?id ?primary_key ?product_id ?secondary_key ?state
           ?subscription_id ?user_id ?timeouts ~api_management_name
           ~display_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_tracing ?api_id ?id ?primary_key
    ?product_id ?secondary_key ?state ?subscription_id ?user_id
    ?timeouts ~api_management_name ~display_name ~resource_group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?allow_tracing ?api_id ?id ?primary_key ?product_id
      ?secondary_key ?state ?subscription_id ?user_id ?timeouts
      ~api_management_name ~display_name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

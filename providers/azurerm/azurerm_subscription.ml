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

type azurerm_subscription = {
  alias : string prop option; [@option]
  billing_scope_id : string prop option; [@option]
  id : string prop option; [@option]
  subscription_id : string prop option; [@option]
  subscription_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  workload : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_subscription) -> ()

let yojson_of_azurerm_subscription =
  (function
   | {
       alias = v_alias;
       billing_scope_id = v_billing_scope_id;
       id = v_id;
       subscription_id = v_subscription_id;
       subscription_name = v_subscription_name;
       tags = v_tags;
       workload = v_workload;
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
         match v_workload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workload", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subscription_name
         in
         ("subscription_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_billing_scope_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_scope_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alias", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_subscription -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_subscription

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_subscription ?alias ?billing_scope_id ?id
    ?subscription_id ?tags ?workload ?timeouts ~subscription_name ()
    : azurerm_subscription =
  {
    alias;
    billing_scope_id;
    id;
    subscription_id;
    subscription_name;
    tags;
    workload;
    timeouts;
  }

type t = {
  tf_name : string;
  alias : string prop;
  billing_scope_id : string prop;
  id : string prop;
  subscription_id : string prop;
  subscription_name : string prop;
  tags : string Tf_core.assoc prop;
  tenant_id : string prop;
  workload : string prop;
}

let make ?alias ?billing_scope_id ?id ?subscription_id ?tags
    ?workload ?timeouts ~subscription_name __id =
  let __type = "azurerm_subscription" in
  let __attrs =
    ({
       tf_name = __id;
       alias = Prop.computed __type __id "alias";
       billing_scope_id =
         Prop.computed __type __id "billing_scope_id";
       id = Prop.computed __type __id "id";
       subscription_id = Prop.computed __type __id "subscription_id";
       subscription_name =
         Prop.computed __type __id "subscription_name";
       tags = Prop.computed __type __id "tags";
       tenant_id = Prop.computed __type __id "tenant_id";
       workload = Prop.computed __type __id "workload";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_subscription
        (azurerm_subscription ?alias ?billing_scope_id ?id
           ?subscription_id ?tags ?workload ?timeouts
           ~subscription_name ());
    attrs = __attrs;
  }

let register ?tf_module ?alias ?billing_scope_id ?id ?subscription_id
    ?tags ?workload ?timeouts ~subscription_name __id =
  let (r : _ Tf_core.resource) =
    make ?alias ?billing_scope_id ?id ?subscription_id ?tags
      ?workload ?timeouts ~subscription_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

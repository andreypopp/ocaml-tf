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

type azurerm_api_management_product = {
  api_management_name : string prop;
  approval_required : bool prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  product_id : string prop;
  published : bool prop;
  resource_group_name : string prop;
  subscription_required : bool prop option; [@option]
  subscriptions_limit : float prop option; [@option]
  terms : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_product) -> ()

let yojson_of_azurerm_api_management_product =
  (function
   | {
       api_management_name = v_api_management_name;
       approval_required = v_approval_required;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       product_id = v_product_id;
       published = v_published;
       resource_group_name = v_resource_group_name;
       subscription_required = v_subscription_required;
       subscriptions_limit = v_subscriptions_limit;
       terms = v_terms;
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
         match v_terms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "terms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subscriptions_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "subscriptions_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subscription_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "subscription_required", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_published in
         ("published", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product_id in
         ("product_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_approval_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "approval_required", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_product ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_product

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_product ?approval_required ?description
    ?id ?subscription_required ?subscriptions_limit ?terms ?timeouts
    ~api_management_name ~display_name ~product_id ~published
    ~resource_group_name () : azurerm_api_management_product =
  {
    api_management_name;
    approval_required;
    description;
    display_name;
    id;
    product_id;
    published;
    resource_group_name;
    subscription_required;
    subscriptions_limit;
    terms;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  approval_required : bool prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  product_id : string prop;
  published : bool prop;
  resource_group_name : string prop;
  subscription_required : bool prop;
  subscriptions_limit : float prop;
  terms : string prop;
}

let make ?approval_required ?description ?id ?subscription_required
    ?subscriptions_limit ?terms ?timeouts ~api_management_name
    ~display_name ~product_id ~published ~resource_group_name __id =
  let __type = "azurerm_api_management_product" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       approval_required =
         Prop.computed __type __id "approval_required";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       product_id = Prop.computed __type __id "product_id";
       published = Prop.computed __type __id "published";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subscription_required =
         Prop.computed __type __id "subscription_required";
       subscriptions_limit =
         Prop.computed __type __id "subscriptions_limit";
       terms = Prop.computed __type __id "terms";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_product
        (azurerm_api_management_product ?approval_required
           ?description ?id ?subscription_required
           ?subscriptions_limit ?terms ?timeouts ~api_management_name
           ~display_name ~product_id ~published ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?approval_required ?description ?id
    ?subscription_required ?subscriptions_limit ?terms ?timeouts
    ~api_management_name ~display_name ~product_id ~published
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?approval_required ?description ?id ?subscription_required
      ?subscriptions_limit ?terms ?timeouts ~api_management_name
      ~display_name ~product_id ~published ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

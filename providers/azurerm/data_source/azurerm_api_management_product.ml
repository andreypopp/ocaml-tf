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

type azurerm_api_management_product = {
  api_management_name : string prop;
  id : string prop option; [@option]
  product_id : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_product) -> ()

let yojson_of_azurerm_api_management_product =
  (function
   | {
       api_management_name = v_api_management_name;
       id = v_id;
       product_id = v_product_id;
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

let timeouts ?read () : timeouts = { read }

let azurerm_api_management_product ?id ?timeouts ~api_management_name
    ~product_id ~resource_group_name () :
    azurerm_api_management_product =
  {
    api_management_name;
    id;
    product_id;
    resource_group_name;
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

let make ?id ?timeouts ~api_management_name ~product_id
    ~resource_group_name __id =
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
        (azurerm_api_management_product ?id ?timeouts
           ~api_management_name ~product_id ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_name
    ~product_id ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_name ~product_id
      ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

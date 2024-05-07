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

type azurerm_subscription = {
  id : string prop option; [@option]
  subscription_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_subscription) -> ()

let yojson_of_azurerm_subscription =
  (function
   | {
       id = v_id;
       subscription_id = v_subscription_id;
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
       `Assoc bnds
    : azurerm_subscription -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_subscription

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_subscription ?id ?subscription_id ?timeouts () :
    azurerm_subscription =
  { id; subscription_id; timeouts }

type t = {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  location_placement_id : string prop;
  quota_id : string prop;
  spending_limit : string prop;
  state : string prop;
  subscription_id : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
}

let make ?id ?subscription_id ?timeouts __id =
  let __type = "azurerm_subscription" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location_placement_id =
         Prop.computed __type __id "location_placement_id";
       quota_id = Prop.computed __type __id "quota_id";
       spending_limit = Prop.computed __type __id "spending_limit";
       state = Prop.computed __type __id "state";
       subscription_id = Prop.computed __type __id "subscription_id";
       tags = Prop.computed __type __id "tags";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_subscription
        (azurerm_subscription ?id ?subscription_id ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?subscription_id ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?id ?subscription_id ?timeouts __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

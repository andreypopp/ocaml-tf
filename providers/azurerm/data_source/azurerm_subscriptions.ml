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

type subscriptions = {
  display_name : string prop;
  id : string prop;
  location_placement_id : string prop;
  quota_id : string prop;
  spending_limit : string prop;
  state : string prop;
  subscription_id : string prop;
  tags : (string * string prop) list;
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subscriptions) -> ()

let yojson_of_subscriptions =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       location_placement_id = v_location_placement_id;
       quota_id = v_quota_id;
       spending_limit = v_spending_limit;
       state = v_state;
       subscription_id = v_subscription_id;
       tags = v_tags;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subscription_id
         in
         ("subscription_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spending_limit
         in
         ("spending_limit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_quota_id in
         ("quota_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_location_placement_id
         in
         ("location_placement_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : subscriptions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subscriptions

[@@@deriving.end]

type azurerm_subscriptions = {
  display_name_contains : string prop option; [@option]
  display_name_prefix : string prop option; [@option]
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_subscriptions) -> ()

let yojson_of_azurerm_subscriptions =
  (function
   | {
       display_name_contains = v_display_name_contains;
       display_name_prefix = v_display_name_prefix;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name_contains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name_contains", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_subscriptions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_subscriptions

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_subscriptions ?display_name_contains ?display_name_prefix
    ?id ?timeouts () : azurerm_subscriptions =
  { display_name_contains; display_name_prefix; id; timeouts }

type t = {
  display_name_contains : string prop;
  display_name_prefix : string prop;
  id : string prop;
  subscriptions : subscriptions list prop;
}

let make ?display_name_contains ?display_name_prefix ?id ?timeouts
    __id =
  let __type = "azurerm_subscriptions" in
  let __attrs =
    ({
       display_name_contains =
         Prop.computed __type __id "display_name_contains";
       display_name_prefix =
         Prop.computed __type __id "display_name_prefix";
       id = Prop.computed __type __id "id";
       subscriptions = Prop.computed __type __id "subscriptions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_subscriptions
        (azurerm_subscriptions ?display_name_contains
           ?display_name_prefix ?id ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name_contains ?display_name_prefix
    ?id ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?display_name_contains ?display_name_prefix ?id ?timeouts
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

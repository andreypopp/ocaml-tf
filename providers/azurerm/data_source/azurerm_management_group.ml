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

type azurerm_management_group = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_management_group) -> ()

let yojson_of_azurerm_management_group =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       name = v_name;
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_management_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_management_group

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_management_group ?display_name ?id ?name ?timeouts () :
    azurerm_management_group =
  { display_name; id; name; timeouts }

type t = {
  all_management_group_ids : string list prop;
  all_subscription_ids : string list prop;
  display_name : string prop;
  id : string prop;
  management_group_ids : string list prop;
  name : string prop;
  parent_management_group_id : string prop;
  subscription_ids : string list prop;
}

let make ?display_name ?id ?name ?timeouts __id =
  let __type = "azurerm_management_group" in
  let __attrs =
    ({
       all_management_group_ids =
         Prop.computed __type __id "all_management_group_ids";
       all_subscription_ids =
         Prop.computed __type __id "all_subscription_ids";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       management_group_ids =
         Prop.computed __type __id "management_group_ids";
       name = Prop.computed __type __id "name";
       parent_management_group_id =
         Prop.computed __type __id "parent_management_group_id";
       subscription_ids =
         Prop.computed __type __id "subscription_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_management_group
        (azurerm_management_group ?display_name ?id ?name ?timeouts
           ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?name ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?name ?timeouts __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

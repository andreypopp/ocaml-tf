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

type azurerm_subscription_policy_exemption = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  exemption_category : string prop;
  expires_on : string prop option; [@option]
  id : string prop option; [@option]
  metadata : string prop option; [@option]
  name : string prop;
  policy_assignment_id : string prop;
  policy_definition_reference_ids : string prop list option;
      [@option]
  subscription_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_subscription_policy_exemption) -> ()

let yojson_of_azurerm_subscription_policy_exemption =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       exemption_category = v_exemption_category;
       expires_on = v_expires_on;
       id = v_id;
       metadata = v_metadata;
       name = v_name;
       policy_assignment_id = v_policy_assignment_id;
       policy_definition_reference_ids =
         v_policy_definition_reference_ids;
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
         let arg =
           yojson_of_prop yojson_of_string v_subscription_id
         in
         ("subscription_id", arg) :: bnds
       in
       let bnds =
         match v_policy_definition_reference_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "policy_definition_reference_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_assignment_id
         in
         ("policy_assignment_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata", arg in
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
         match v_expires_on with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expires_on", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_exemption_category
         in
         ("exemption_category", arg) :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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
    : azurerm_subscription_policy_exemption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_subscription_policy_exemption

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_subscription_policy_exemption ?description ?display_name
    ?expires_on ?id ?metadata ?policy_definition_reference_ids
    ?timeouts ~exemption_category ~name ~policy_assignment_id
    ~subscription_id () : azurerm_subscription_policy_exemption =
  {
    description;
    display_name;
    exemption_category;
    expires_on;
    id;
    metadata;
    name;
    policy_assignment_id;
    policy_definition_reference_ids;
    subscription_id;
    timeouts;
  }

type t = {
  description : string prop;
  display_name : string prop;
  exemption_category : string prop;
  expires_on : string prop;
  id : string prop;
  metadata : string prop;
  name : string prop;
  policy_assignment_id : string prop;
  policy_definition_reference_ids : string list prop;
  subscription_id : string prop;
}

let make ?description ?display_name ?expires_on ?id ?metadata
    ?policy_definition_reference_ids ?timeouts ~exemption_category
    ~name ~policy_assignment_id ~subscription_id __id =
  let __type = "azurerm_subscription_policy_exemption" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       exemption_category =
         Prop.computed __type __id "exemption_category";
       expires_on = Prop.computed __type __id "expires_on";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       policy_assignment_id =
         Prop.computed __type __id "policy_assignment_id";
       policy_definition_reference_ids =
         Prop.computed __type __id "policy_definition_reference_ids";
       subscription_id = Prop.computed __type __id "subscription_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_subscription_policy_exemption
        (azurerm_subscription_policy_exemption ?description
           ?display_name ?expires_on ?id ?metadata
           ?policy_definition_reference_ids ?timeouts
           ~exemption_category ~name ~policy_assignment_id
           ~subscription_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?expires_on ?id
    ?metadata ?policy_definition_reference_ids ?timeouts
    ~exemption_category ~name ~policy_assignment_id ~subscription_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?expires_on ?id ?metadata
      ?policy_definition_reference_ids ?timeouts ~exemption_category
      ~name ~policy_assignment_id ~subscription_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

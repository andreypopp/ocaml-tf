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

type azurerm_marketplace_agreement = {
  id : string prop option; [@option]
  offer : string prop;
  plan : string prop;
  publisher : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_marketplace_agreement) -> ()

let yojson_of_azurerm_marketplace_agreement =
  (function
   | {
       id = v_id;
       offer = v_offer;
       plan = v_plan;
       publisher = v_publisher;
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
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_plan in
         ("plan", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_offer in
         ("offer", arg) :: bnds
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
    : azurerm_marketplace_agreement ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_marketplace_agreement

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_marketplace_agreement ?id ?timeouts ~offer ~plan
    ~publisher () : azurerm_marketplace_agreement =
  { id; offer; plan; publisher; timeouts }

type t = {
  id : string prop;
  license_text_link : string prop;
  offer : string prop;
  plan : string prop;
  privacy_policy_link : string prop;
  publisher : string prop;
}

let make ?id ?timeouts ~offer ~plan ~publisher __id =
  let __type = "azurerm_marketplace_agreement" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       license_text_link =
         Prop.computed __type __id "license_text_link";
       offer = Prop.computed __type __id "offer";
       plan = Prop.computed __type __id "plan";
       privacy_policy_link =
         Prop.computed __type __id "privacy_policy_link";
       publisher = Prop.computed __type __id "publisher";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_marketplace_agreement
        (azurerm_marketplace_agreement ?id ?timeouts ~offer ~plan
           ~publisher ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~offer ~plan ~publisher __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~offer ~plan ~publisher __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

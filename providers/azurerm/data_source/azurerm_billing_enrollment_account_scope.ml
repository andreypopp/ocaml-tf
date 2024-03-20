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

type azurerm_billing_enrollment_account_scope = {
  billing_account_name : string prop;
  enrollment_account_name : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_billing_enrollment_account_scope) -> ()

let yojson_of_azurerm_billing_enrollment_account_scope =
  (function
   | {
       billing_account_name = v_billing_account_name;
       enrollment_account_name = v_enrollment_account_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_enrollment_account_name
         in
         ("enrollment_account_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_billing_account_name
         in
         ("billing_account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_billing_enrollment_account_scope ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_billing_enrollment_account_scope

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_billing_enrollment_account_scope ?id ?timeouts
    ~billing_account_name ~enrollment_account_name () :
    azurerm_billing_enrollment_account_scope =
  { billing_account_name; enrollment_account_name; id; timeouts }

type t = {
  billing_account_name : string prop;
  enrollment_account_name : string prop;
  id : string prop;
}

let make ?id ?timeouts ~billing_account_name ~enrollment_account_name
    __id =
  let __type = "azurerm_billing_enrollment_account_scope" in
  let __attrs =
    ({
       billing_account_name =
         Prop.computed __type __id "billing_account_name";
       enrollment_account_name =
         Prop.computed __type __id "enrollment_account_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_billing_enrollment_account_scope
        (azurerm_billing_enrollment_account_scope ?id ?timeouts
           ~billing_account_name ~enrollment_account_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~billing_account_name
    ~enrollment_account_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~billing_account_name ~enrollment_account_name
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_source_control_token = {
  id : string prop option; [@option]
  type_ : string prop; [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_source_control_token) -> ()

let yojson_of_azurerm_source_control_token =
  (function
   | { id = v_id; type_ = v_type_; timeouts = v_timeouts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
    : azurerm_source_control_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_source_control_token

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_source_control_token ?id ?timeouts ~type_ () :
    azurerm_source_control_token =
  { id; type_; timeouts }

type t = {
  id : string prop;
  token : string prop;
  token_secret : string prop;
  type_ : string prop;
}

let make ?id ?timeouts ~type_ __id =
  let __type = "azurerm_source_control_token" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       token = Prop.computed __type __id "token";
       token_secret = Prop.computed __type __id "token_secret";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_source_control_token
        (azurerm_source_control_token ?id ?timeouts ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~type_ __id =
  let (r : _ Tf_core.resource) = make ?id ?timeouts ~type_ __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

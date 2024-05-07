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

type single_network_slice_selection_assistance_information = {
  slice_differentiator : string prop;
  slice_service_type : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : single_network_slice_selection_assistance_information) ->
  ()

let yojson_of_single_network_slice_selection_assistance_information =
  (function
   | {
       slice_differentiator = v_slice_differentiator;
       slice_service_type = v_slice_service_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_slice_service_type
         in
         ("slice_service_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_slice_differentiator
         in
         ("slice_differentiator", arg) :: bnds
       in
       `Assoc bnds
    : single_network_slice_selection_assistance_information ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_single_network_slice_selection_assistance_information

[@@@deriving.end]

type azurerm_mobile_network_slice = {
  id : string prop option; [@option]
  mobile_network_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mobile_network_slice) -> ()

let yojson_of_azurerm_mobile_network_slice =
  (function
   | {
       id = v_id;
       mobile_network_id = v_mobile_network_id;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_mobile_network_id
         in
         ("mobile_network_id", arg) :: bnds
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
    : azurerm_mobile_network_slice ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_slice

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mobile_network_slice ?id ?timeouts ~mobile_network_id
    ~name () : azurerm_mobile_network_slice =
  { id; mobile_network_id; name; timeouts }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  single_network_slice_selection_assistance_information :
    single_network_slice_selection_assistance_information list prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~mobile_network_id ~name __id =
  let __type = "azurerm_mobile_network_slice" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mobile_network_id =
         Prop.computed __type __id "mobile_network_id";
       name = Prop.computed __type __id "name";
       single_network_slice_selection_assistance_information =
         Prop.computed __type __id
           "single_network_slice_selection_assistance_information";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_slice
        (azurerm_mobile_network_slice ?id ?timeouts
           ~mobile_network_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~mobile_network_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~mobile_network_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_api_management_gateway_certificate_authority = {
  api_management_id : string prop;
  certificate_name : string prop;
  gateway_name : string prop;
  id : string prop option; [@option]
  is_trusted : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_api_management_gateway_certificate_authority) -> ()

let yojson_of_azurerm_api_management_gateway_certificate_authority =
  (function
   | {
       api_management_id = v_api_management_id;
       certificate_name = v_certificate_name;
       gateway_name = v_gateway_name;
       id = v_id;
       is_trusted = v_is_trusted;
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
         match v_is_trusted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_trusted", arg in
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
         let arg = yojson_of_prop yojson_of_string v_gateway_name in
         ("gateway_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_name
         in
         ("certificate_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_id
         in
         ("api_management_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_gateway_certificate_authority ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_api_management_gateway_certificate_authority

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_gateway_certificate_authority ?id
    ?is_trusted ?timeouts ~api_management_id ~certificate_name
    ~gateway_name () :
    azurerm_api_management_gateway_certificate_authority =
  {
    api_management_id;
    certificate_name;
    gateway_name;
    id;
    is_trusted;
    timeouts;
  }

type t = {
  tf_name : string;
  api_management_id : string prop;
  certificate_name : string prop;
  gateway_name : string prop;
  id : string prop;
  is_trusted : bool prop;
}

let make ?id ?is_trusted ?timeouts ~api_management_id
    ~certificate_name ~gateway_name __id =
  let __type =
    "azurerm_api_management_gateway_certificate_authority"
  in
  let __attrs =
    ({
       tf_name = __id;
       api_management_id =
         Prop.computed __type __id "api_management_id";
       certificate_name =
         Prop.computed __type __id "certificate_name";
       gateway_name = Prop.computed __type __id "gateway_name";
       id = Prop.computed __type __id "id";
       is_trusted = Prop.computed __type __id "is_trusted";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_gateway_certificate_authority
        (azurerm_api_management_gateway_certificate_authority ?id
           ?is_trusted ?timeouts ~api_management_id ~certificate_name
           ~gateway_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_trusted ?timeouts ~api_management_id
    ~certificate_name ~gateway_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_trusted ?timeouts ~api_management_id
      ~certificate_name ~gateway_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

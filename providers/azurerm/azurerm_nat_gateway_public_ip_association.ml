(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_nat_gateway_public_ip_association = {
  id : string prop option; [@option]
  nat_gateway_id : string prop;
  public_ip_address_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_nat_gateway_public_ip_association) -> ()

let yojson_of_azurerm_nat_gateway_public_ip_association =
  (function
   | {
       id = v_id;
       nat_gateway_id = v_nat_gateway_id;
       public_ip_address_id = v_public_ip_address_id;
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
           yojson_of_prop yojson_of_string v_public_ip_address_id
         in
         ("public_ip_address_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_nat_gateway_id
         in
         ("nat_gateway_id", arg) :: bnds
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
    : azurerm_nat_gateway_public_ip_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_nat_gateway_public_ip_association

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_nat_gateway_public_ip_association ?id ?timeouts
    ~nat_gateway_id ~public_ip_address_id () :
    azurerm_nat_gateway_public_ip_association =
  { id; nat_gateway_id; public_ip_address_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  nat_gateway_id : string prop;
  public_ip_address_id : string prop;
}

let make ?id ?timeouts ~nat_gateway_id ~public_ip_address_id __id =
  let __type = "azurerm_nat_gateway_public_ip_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       nat_gateway_id = Prop.computed __type __id "nat_gateway_id";
       public_ip_address_id =
         Prop.computed __type __id "public_ip_address_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_nat_gateway_public_ip_association
        (azurerm_nat_gateway_public_ip_association ?id ?timeouts
           ~nat_gateway_id ~public_ip_address_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~nat_gateway_id
    ~public_ip_address_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~nat_gateway_id ~public_ip_address_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

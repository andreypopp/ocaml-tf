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

type azurerm_private_dns_resolver_outbound_endpoint = {
  id : string prop option; [@option]
  name : string prop;
  private_dns_resolver_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_private_dns_resolver_outbound_endpoint) -> ()

let yojson_of_azurerm_private_dns_resolver_outbound_endpoint =
  (function
   | {
       id = v_id;
       name = v_name;
       private_dns_resolver_id = v_private_dns_resolver_id;
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
           yojson_of_prop yojson_of_string v_private_dns_resolver_id
         in
         ("private_dns_resolver_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : azurerm_private_dns_resolver_outbound_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_private_dns_resolver_outbound_endpoint

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_private_dns_resolver_outbound_endpoint ?id ?timeouts
    ~name ~private_dns_resolver_id () :
    azurerm_private_dns_resolver_outbound_endpoint =
  { id; name; private_dns_resolver_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  private_dns_resolver_id : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~name ~private_dns_resolver_id __id =
  let __type = "azurerm_private_dns_resolver_outbound_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_dns_resolver_id =
         Prop.computed __type __id "private_dns_resolver_id";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_dns_resolver_outbound_endpoint
        (azurerm_private_dns_resolver_outbound_endpoint ?id ?timeouts
           ~name ~private_dns_resolver_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~private_dns_resolver_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~private_dns_resolver_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

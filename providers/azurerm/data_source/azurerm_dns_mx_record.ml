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

type record = { exchange : string prop; preference : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : record) -> ()

let yojson_of_record =
  (function
   | { exchange = v_exchange; preference = v_preference } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_preference in
         ("preference", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_exchange in
         ("exchange", arg) :: bnds
       in
       `Assoc bnds
    : record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_record

[@@@deriving.end]

type azurerm_dns_mx_record = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  resource_group_name : string prop;
  zone_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dns_mx_record) -> ()

let yojson_of_azurerm_dns_mx_record =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       zone_name = v_zone_name;
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
         let arg = yojson_of_prop yojson_of_string v_zone_name in
         ("zone_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
       `Assoc bnds
    : azurerm_dns_mx_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dns_mx_record

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_dns_mx_record ?id ?name ?timeouts ~resource_group_name
    ~zone_name () : azurerm_dns_mx_record =
  { id; name; resource_group_name; zone_name; timeouts }

type t = {
  tf_name : string;
  fqdn : string prop;
  id : string prop;
  name : string prop;
  record : record list prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  ttl : float prop;
  zone_name : string prop;
}

let make ?id ?name ?timeouts ~resource_group_name ~zone_name __id =
  let __type = "azurerm_dns_mx_record" in
  let __attrs =
    ({
       tf_name = __id;
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       record = Prop.computed __type __id "record";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       ttl = Prop.computed __type __id "ttl";
       zone_name = Prop.computed __type __id "zone_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dns_mx_record
        (azurerm_dns_mx_record ?id ?name ?timeouts
           ~resource_group_name ~zone_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~resource_group_name
    ~zone_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~resource_group_name ~zone_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

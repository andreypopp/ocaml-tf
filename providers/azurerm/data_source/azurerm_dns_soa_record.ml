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

type azurerm_dns_soa_record = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  resource_group_name : string prop;
  zone_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dns_soa_record) -> ()

let yojson_of_azurerm_dns_soa_record =
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
    : azurerm_dns_soa_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dns_soa_record

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_dns_soa_record ?id ?name ?timeouts ~resource_group_name
    ~zone_name () : azurerm_dns_soa_record =
  { id; name; resource_group_name; zone_name; timeouts }

type t = {
  tf_name : string;
  email : string prop;
  expire_time : float prop;
  fqdn : string prop;
  host_name : string prop;
  id : string prop;
  minimum_ttl : float prop;
  name : string prop;
  refresh_time : float prop;
  resource_group_name : string prop;
  retry_time : float prop;
  serial_number : float prop;
  tags : (string * string) list prop;
  ttl : float prop;
  zone_name : string prop;
}

let make ?id ?name ?timeouts ~resource_group_name ~zone_name __id =
  let __type = "azurerm_dns_soa_record" in
  let __attrs =
    ({
       tf_name = __id;
       email = Prop.computed __type __id "email";
       expire_time = Prop.computed __type __id "expire_time";
       fqdn = Prop.computed __type __id "fqdn";
       host_name = Prop.computed __type __id "host_name";
       id = Prop.computed __type __id "id";
       minimum_ttl = Prop.computed __type __id "minimum_ttl";
       name = Prop.computed __type __id "name";
       refresh_time = Prop.computed __type __id "refresh_time";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       retry_time = Prop.computed __type __id "retry_time";
       serial_number = Prop.computed __type __id "serial_number";
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
      yojson_of_azurerm_dns_soa_record
        (azurerm_dns_soa_record ?id ?name ?timeouts
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

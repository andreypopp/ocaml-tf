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

type azurerm_nat_gateway = {
  id : string prop option; [@option]
  name : string prop;
  public_ip_address_ids : string prop list option; [@option]
  public_ip_prefix_ids : string prop list option; [@option]
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_nat_gateway) -> ()

let yojson_of_azurerm_nat_gateway =
  (function
   | {
       id = v_id;
       name = v_name;
       public_ip_address_ids = v_public_ip_address_ids;
       public_ip_prefix_ids = v_public_ip_prefix_ids;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_ip_prefix_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "public_ip_prefix_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ip_address_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "public_ip_address_ids", arg in
             bnd :: bnds
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
    : azurerm_nat_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_nat_gateway

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_nat_gateway ?id ?public_ip_address_ids
    ?public_ip_prefix_ids ?timeouts ~name ~resource_group_name () :
    azurerm_nat_gateway =
  {
    id;
    name;
    public_ip_address_ids;
    public_ip_prefix_ids;
    resource_group_name;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  location : string prop;
  name : string prop;
  public_ip_address_ids : string list prop;
  public_ip_prefix_ids : string list prop;
  resource_group_name : string prop;
  resource_guid : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let make ?id ?public_ip_address_ids ?public_ip_prefix_ids ?timeouts
    ~name ~resource_group_name __id =
  let __type = "azurerm_nat_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       idle_timeout_in_minutes =
         Prop.computed __type __id "idle_timeout_in_minutes";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_ip_address_ids =
         Prop.computed __type __id "public_ip_address_ids";
       public_ip_prefix_ids =
         Prop.computed __type __id "public_ip_prefix_ids";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       resource_guid = Prop.computed __type __id "resource_guid";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_nat_gateway
        (azurerm_nat_gateway ?id ?public_ip_address_ids
           ?public_ip_prefix_ids ?timeouts ~name ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?public_ip_address_ids
    ?public_ip_prefix_ids ?timeouts ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?public_ip_address_ids ?public_ip_prefix_ids ?timeouts
      ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

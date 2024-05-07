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

type public_ips = {
  domain_name_label : string prop;
  fqdn : string prop;
  id : string prop;
  ip_address : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : public_ips) -> ()

let yojson_of_public_ips =
  (function
   | {
       domain_name_label = v_domain_name_label;
       fqdn = v_fqdn;
       id = v_id;
       ip_address = v_ip_address;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_name_label
         in
         ("domain_name_label", arg) :: bnds
       in
       `Assoc bnds
    : public_ips -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_public_ips

[@@@deriving.end]

type azurerm_public_ips = {
  allocation_type : string prop option; [@option]
  attachment_status : string prop option; [@option]
  id : string prop option; [@option]
  name_prefix : string prop option; [@option]
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_public_ips) -> ()

let yojson_of_azurerm_public_ips =
  (function
   | {
       allocation_type = v_allocation_type;
       attachment_status = v_attachment_status;
       id = v_id;
       name_prefix = v_name_prefix;
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
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
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
         match v_attachment_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "attachment_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allocation_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_public_ips -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_public_ips

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_public_ips ?allocation_type ?attachment_status ?id
    ?name_prefix ?timeouts ~resource_group_name () :
    azurerm_public_ips =
  {
    allocation_type;
    attachment_status;
    id;
    name_prefix;
    resource_group_name;
    timeouts;
  }

type t = {
  tf_name : string;
  allocation_type : string prop;
  attachment_status : string prop;
  id : string prop;
  name_prefix : string prop;
  public_ips : public_ips list prop;
  resource_group_name : string prop;
}

let make ?allocation_type ?attachment_status ?id ?name_prefix
    ?timeouts ~resource_group_name __id =
  let __type = "azurerm_public_ips" in
  let __attrs =
    ({
       tf_name = __id;
       allocation_type = Prop.computed __type __id "allocation_type";
       attachment_status =
         Prop.computed __type __id "attachment_status";
       id = Prop.computed __type __id "id";
       name_prefix = Prop.computed __type __id "name_prefix";
       public_ips = Prop.computed __type __id "public_ips";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_public_ips
        (azurerm_public_ips ?allocation_type ?attachment_status ?id
           ?name_prefix ?timeouts ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?allocation_type ?attachment_status ?id
    ?name_prefix ?timeouts ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?allocation_type ?attachment_status ?id ?name_prefix
      ?timeouts ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

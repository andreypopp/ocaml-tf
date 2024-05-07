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

type azurerm_ip_group_cidr = {
  cidr : string prop;
  id : string prop option; [@option]
  ip_group_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_ip_group_cidr) -> ()

let yojson_of_azurerm_ip_group_cidr =
  (function
   | {
       cidr = v_cidr;
       id = v_id;
       ip_group_id = v_ip_group_id;
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
         let arg = yojson_of_prop yojson_of_string v_ip_group_id in
         ("ip_group_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_ip_group_cidr -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_ip_group_cidr

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_ip_group_cidr ?id ?timeouts ~cidr ~ip_group_id () :
    azurerm_ip_group_cidr =
  { cidr; id; ip_group_id; timeouts }

type t = {
  tf_name : string;
  cidr : string prop;
  id : string prop;
  ip_group_id : string prop;
}

let make ?id ?timeouts ~cidr ~ip_group_id __id =
  let __type = "azurerm_ip_group_cidr" in
  let __attrs =
    ({
       tf_name = __id;
       cidr = Prop.computed __type __id "cidr";
       id = Prop.computed __type __id "id";
       ip_group_id = Prop.computed __type __id "ip_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_ip_group_cidr
        (azurerm_ip_group_cidr ?id ?timeouts ~cidr ~ip_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cidr ~ip_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cidr ~ip_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_virtual_network_dns_servers = {
  dns_servers : string prop list option; [@option]
  id : string prop option; [@option]
  virtual_network_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_network_dns_servers) -> ()

let yojson_of_azurerm_virtual_network_dns_servers =
  (function
   | {
       dns_servers = v_dns_servers;
       id = v_id;
       virtual_network_id = v_virtual_network_id;
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
           yojson_of_prop yojson_of_string v_virtual_network_id
         in
         ("virtual_network_id", arg) :: bnds
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
         match v_dns_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dns_servers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_network_dns_servers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_network_dns_servers

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_network_dns_servers ?dns_servers ?id ?timeouts
    ~virtual_network_id () : azurerm_virtual_network_dns_servers =
  { dns_servers; id; virtual_network_id; timeouts }

type t = {
  tf_name : string;
  dns_servers : string list prop;
  id : string prop;
  virtual_network_id : string prop;
}

let make ?dns_servers ?id ?timeouts ~virtual_network_id __id =
  let __type = "azurerm_virtual_network_dns_servers" in
  let __attrs =
    ({
       tf_name = __id;
       dns_servers = Prop.computed __type __id "dns_servers";
       id = Prop.computed __type __id "id";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network_dns_servers
        (azurerm_virtual_network_dns_servers ?dns_servers ?id
           ?timeouts ~virtual_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?dns_servers ?id ?timeouts
    ~virtual_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?dns_servers ?id ?timeouts ~virtual_network_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

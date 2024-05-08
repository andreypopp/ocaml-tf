(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         if [] = v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type link1 = {
  admin_enabled : bool prop option; [@option]
  macsec_cak_keyvault_secret_id : string prop option; [@option]
  macsec_cipher : string prop option; [@option]
  macsec_ckn_keyvault_secret_id : string prop option; [@option]
  macsec_sci_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : link1) -> ()

let yojson_of_link1 =
  (function
   | {
       admin_enabled = v_admin_enabled;
       macsec_cak_keyvault_secret_id =
         v_macsec_cak_keyvault_secret_id;
       macsec_cipher = v_macsec_cipher;
       macsec_ckn_keyvault_secret_id =
         v_macsec_ckn_keyvault_secret_id;
       macsec_sci_enabled = v_macsec_sci_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_macsec_sci_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "macsec_sci_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_macsec_ckn_keyvault_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "macsec_ckn_keyvault_secret_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_macsec_cipher with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "macsec_cipher", arg in
             bnd :: bnds
       in
       let bnds =
         match v_macsec_cak_keyvault_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "macsec_cak_keyvault_secret_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "admin_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : link1 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_link1

[@@@deriving.end]

type link2 = {
  admin_enabled : bool prop option; [@option]
  macsec_cak_keyvault_secret_id : string prop option; [@option]
  macsec_cipher : string prop option; [@option]
  macsec_ckn_keyvault_secret_id : string prop option; [@option]
  macsec_sci_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : link2) -> ()

let yojson_of_link2 =
  (function
   | {
       admin_enabled = v_admin_enabled;
       macsec_cak_keyvault_secret_id =
         v_macsec_cak_keyvault_secret_id;
       macsec_cipher = v_macsec_cipher;
       macsec_ckn_keyvault_secret_id =
         v_macsec_ckn_keyvault_secret_id;
       macsec_sci_enabled = v_macsec_sci_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_macsec_sci_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "macsec_sci_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_macsec_ckn_keyvault_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "macsec_ckn_keyvault_secret_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_macsec_cipher with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "macsec_cipher", arg in
             bnd :: bnds
       in
       let bnds =
         match v_macsec_cak_keyvault_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "macsec_cak_keyvault_secret_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "admin_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : link2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_link2

[@@@deriving.end]

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

type azurerm_express_route_port = {
  bandwidth_in_gbps : float prop;
  billing_type : string prop option; [@option]
  encapsulation : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  peering_location : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  identity : identity list;
      [@default []] [@yojson_drop_default ( = )]
  link1 : link1 list; [@default []] [@yojson_drop_default ( = )]
  link2 : link2 list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_express_route_port) -> ()

let yojson_of_azurerm_express_route_port =
  (function
   | {
       bandwidth_in_gbps = v_bandwidth_in_gbps;
       billing_type = v_billing_type;
       encapsulation = v_encapsulation;
       id = v_id;
       location = v_location;
       name = v_name;
       peering_location = v_peering_location;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       identity = v_identity;
       link1 = v_link1;
       link2 = v_link2;
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
         if [] = v_link2 then bnds
         else
           let arg = (yojson_of_list yojson_of_link2) v_link2 in
           let bnd = "link2", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_link1 then bnds
         else
           let arg = (yojson_of_list yojson_of_link1) v_link1 in
           let bnd = "link1", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_peering_location
         in
         ("peering_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_encapsulation in
         ("encapsulation", arg) :: bnds
       in
       let bnds =
         match v_billing_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_bandwidth_in_gbps
         in
         ("bandwidth_in_gbps", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_express_route_port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_express_route_port

[@@@deriving.end]

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let link1 ?admin_enabled ?macsec_cak_keyvault_secret_id
    ?macsec_cipher ?macsec_ckn_keyvault_secret_id ?macsec_sci_enabled
    () : link1 =
  {
    admin_enabled;
    macsec_cak_keyvault_secret_id;
    macsec_cipher;
    macsec_ckn_keyvault_secret_id;
    macsec_sci_enabled;
  }

let link2 ?admin_enabled ?macsec_cak_keyvault_secret_id
    ?macsec_cipher ?macsec_ckn_keyvault_secret_id ?macsec_sci_enabled
    () : link2 =
  {
    admin_enabled;
    macsec_cak_keyvault_secret_id;
    macsec_cipher;
    macsec_ckn_keyvault_secret_id;
    macsec_sci_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_express_route_port ?billing_type ?id ?tags
    ?(identity = []) ?(link1 = []) ?(link2 = []) ?timeouts
    ~bandwidth_in_gbps ~encapsulation ~location ~name
    ~peering_location ~resource_group_name () :
    azurerm_express_route_port =
  {
    bandwidth_in_gbps;
    billing_type;
    encapsulation;
    id;
    location;
    name;
    peering_location;
    resource_group_name;
    tags;
    identity;
    link1;
    link2;
    timeouts;
  }

type t = {
  tf_name : string;
  bandwidth_in_gbps : float prop;
  billing_type : string prop;
  encapsulation : string prop;
  ethertype : string prop;
  guid : string prop;
  id : string prop;
  location : string prop;
  mtu : string prop;
  name : string prop;
  peering_location : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?billing_type ?id ?tags ?(identity = []) ?(link1 = [])
    ?(link2 = []) ?timeouts ~bandwidth_in_gbps ~encapsulation
    ~location ~name ~peering_location ~resource_group_name __id =
  let __type = "azurerm_express_route_port" in
  let __attrs =
    ({
       tf_name = __id;
       bandwidth_in_gbps =
         Prop.computed __type __id "bandwidth_in_gbps";
       billing_type = Prop.computed __type __id "billing_type";
       encapsulation = Prop.computed __type __id "encapsulation";
       ethertype = Prop.computed __type __id "ethertype";
       guid = Prop.computed __type __id "guid";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mtu = Prop.computed __type __id "mtu";
       name = Prop.computed __type __id "name";
       peering_location =
         Prop.computed __type __id "peering_location";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_express_route_port
        (azurerm_express_route_port ?billing_type ?id ?tags ~identity
           ~link1 ~link2 ?timeouts ~bandwidth_in_gbps ~encapsulation
           ~location ~name ~peering_location ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?billing_type ?id ?tags ?(identity = [])
    ?(link1 = []) ?(link2 = []) ?timeouts ~bandwidth_in_gbps
    ~encapsulation ~location ~name ~peering_location
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?billing_type ?id ?tags ~identity ~link1 ~link2 ?timeouts
      ~bandwidth_in_gbps ~encapsulation ~location ~name
      ~peering_location ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

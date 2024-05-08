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

type azurerm_active_directory_domain_service_trust = {
  domain_service_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  password : string prop;
  trusted_domain_dns_ips : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  trusted_domain_fqdn : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_active_directory_domain_service_trust) -> ()

let yojson_of_azurerm_active_directory_domain_service_trust =
  (function
   | {
       domain_service_id = v_domain_service_id;
       id = v_id;
       name = v_name;
       password = v_password;
       trusted_domain_dns_ips = v_trusted_domain_dns_ips;
       trusted_domain_fqdn = v_trusted_domain_fqdn;
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
           yojson_of_prop yojson_of_string v_trusted_domain_fqdn
         in
         ("trusted_domain_fqdn", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_trusted_domain_dns_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_trusted_domain_dns_ips
           in
           let bnd = "trusted_domain_dns_ips", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_service_id
         in
         ("domain_service_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_active_directory_domain_service_trust ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_active_directory_domain_service_trust

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_active_directory_domain_service_trust ?id ?timeouts
    ~domain_service_id ~name ~password ~trusted_domain_dns_ips
    ~trusted_domain_fqdn () :
    azurerm_active_directory_domain_service_trust =
  {
    domain_service_id;
    id;
    name;
    password;
    trusted_domain_dns_ips;
    trusted_domain_fqdn;
    timeouts;
  }

type t = {
  tf_name : string;
  domain_service_id : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  trusted_domain_dns_ips : string list prop;
  trusted_domain_fqdn : string prop;
}

let make ?id ?timeouts ~domain_service_id ~name ~password
    ~trusted_domain_dns_ips ~trusted_domain_fqdn __id =
  let __type = "azurerm_active_directory_domain_service_trust" in
  let __attrs =
    ({
       tf_name = __id;
       domain_service_id =
         Prop.computed __type __id "domain_service_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       trusted_domain_dns_ips =
         Prop.computed __type __id "trusted_domain_dns_ips";
       trusted_domain_fqdn =
         Prop.computed __type __id "trusted_domain_fqdn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_active_directory_domain_service_trust
        (azurerm_active_directory_domain_service_trust ?id ?timeouts
           ~domain_service_id ~name ~password ~trusted_domain_dns_ips
           ~trusted_domain_fqdn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain_service_id ~name
    ~password ~trusted_domain_dns_ips ~trusted_domain_fqdn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~domain_service_id ~name ~password
      ~trusted_domain_dns_ips ~trusted_domain_fqdn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

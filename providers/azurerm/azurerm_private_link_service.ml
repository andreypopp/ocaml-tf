(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type nat_ip_configuration = {
  name : string prop;
  primary : bool prop;
  private_ip_address : string prop option; [@option]
  private_ip_address_version : string prop option; [@option]
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nat_ip_configuration) -> ()

let yojson_of_nat_ip_configuration =
  (function
   | {
       name = v_name;
       primary = v_primary;
       private_ip_address = v_private_ip_address;
       private_ip_address_version = v_private_ip_address_version;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_private_ip_address_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_primary in
         ("primary", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : nat_ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nat_ip_configuration

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

type azurerm_private_link_service = {
  auto_approval_subscription_ids : string prop list option; [@option]
  enable_proxy_protocol : bool prop option; [@option]
  fqdns : string prop list option; [@option]
  id : string prop option; [@option]
  load_balancer_frontend_ip_configuration_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  visibility_subscription_ids : string prop list option; [@option]
  nat_ip_configuration : nat_ip_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_private_link_service) -> ()

let yojson_of_azurerm_private_link_service =
  (function
   | {
       auto_approval_subscription_ids =
         v_auto_approval_subscription_ids;
       enable_proxy_protocol = v_enable_proxy_protocol;
       fqdns = v_fqdns;
       id = v_id;
       load_balancer_frontend_ip_configuration_ids =
         v_load_balancer_frontend_ip_configuration_ids;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       visibility_subscription_ids = v_visibility_subscription_ids;
       nat_ip_configuration = v_nat_ip_configuration;
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
         if Stdlib.( = ) [] v_nat_ip_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_nat_ip_configuration)
               v_nat_ip_configuration
           in
           let bnd = "nat_ip_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_visibility_subscription_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "visibility_subscription_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_load_balancer_frontend_ip_configuration_ids
         then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_load_balancer_frontend_ip_configuration_ids
           in
           let bnd =
             "load_balancer_frontend_ip_configuration_ids", arg
           in
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
         match v_fqdns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "fqdns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_proxy_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_proxy_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_approval_subscription_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "auto_approval_subscription_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_private_link_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_private_link_service

[@@@deriving.end]

let nat_ip_configuration ?private_ip_address
    ?private_ip_address_version ~name ~primary ~subnet_id () :
    nat_ip_configuration =
  {
    name;
    primary;
    private_ip_address;
    private_ip_address_version;
    subnet_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_link_service ?auto_approval_subscription_ids
    ?enable_proxy_protocol ?fqdns ?id ?tags
    ?visibility_subscription_ids ?timeouts
    ~load_balancer_frontend_ip_configuration_ids ~location ~name
    ~resource_group_name ~nat_ip_configuration () :
    azurerm_private_link_service =
  {
    auto_approval_subscription_ids;
    enable_proxy_protocol;
    fqdns;
    id;
    load_balancer_frontend_ip_configuration_ids;
    location;
    name;
    resource_group_name;
    tags;
    visibility_subscription_ids;
    nat_ip_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  alias : string prop;
  auto_approval_subscription_ids : string list prop;
  enable_proxy_protocol : bool prop;
  fqdns : string list prop;
  id : string prop;
  load_balancer_frontend_ip_configuration_ids : string list prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  visibility_subscription_ids : string list prop;
}

let make ?auto_approval_subscription_ids ?enable_proxy_protocol
    ?fqdns ?id ?tags ?visibility_subscription_ids ?timeouts
    ~load_balancer_frontend_ip_configuration_ids ~location ~name
    ~resource_group_name ~nat_ip_configuration __id =
  let __type = "azurerm_private_link_service" in
  let __attrs =
    ({
       tf_name = __id;
       alias = Prop.computed __type __id "alias";
       auto_approval_subscription_ids =
         Prop.computed __type __id "auto_approval_subscription_ids";
       enable_proxy_protocol =
         Prop.computed __type __id "enable_proxy_protocol";
       fqdns = Prop.computed __type __id "fqdns";
       id = Prop.computed __type __id "id";
       load_balancer_frontend_ip_configuration_ids =
         Prop.computed __type __id
           "load_balancer_frontend_ip_configuration_ids";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       visibility_subscription_ids =
         Prop.computed __type __id "visibility_subscription_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_link_service
        (azurerm_private_link_service ?auto_approval_subscription_ids
           ?enable_proxy_protocol ?fqdns ?id ?tags
           ?visibility_subscription_ids ?timeouts
           ~load_balancer_frontend_ip_configuration_ids ~location
           ~name ~resource_group_name ~nat_ip_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_approval_subscription_ids
    ?enable_proxy_protocol ?fqdns ?id ?tags
    ?visibility_subscription_ids ?timeouts
    ~load_balancer_frontend_ip_configuration_ids ~location ~name
    ~resource_group_name ~nat_ip_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?auto_approval_subscription_ids ?enable_proxy_protocol
      ?fqdns ?id ?tags ?visibility_subscription_ids ?timeouts
      ~load_balancer_frontend_ip_configuration_ids ~location ~name
      ~resource_group_name ~nat_ip_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

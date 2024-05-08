(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication = {
  certificate : string prop option; [@option]
  client_id : string prop option; [@option]
  name : string prop option; [@option]
  principal_id : string prop option; [@option]
  secret : string prop option; [@option]
  subscription_id : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication) -> ()

let yojson_of_authentication =
  (function
   | {
       certificate = v_certificate;
       client_id = v_client_id;
       name = v_name;
       principal_id = v_principal_id;
       secret = v_secret;
       subscription_id = v_subscription_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_subscription_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subscription_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_principal_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "principal_id", arg in
             bnd :: bnds
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
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication

[@@@deriving.end]

type secret_store = { key_vault_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : secret_store) -> ()

let yojson_of_secret_store =
  (function
   | { key_vault_id = v_key_vault_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       `Assoc bnds
    : secret_store -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret_store

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

type azurerm_spring_cloud_connection = {
  client_type : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  spring_cloud_id : string prop;
  target_resource_id : string prop;
  vnet_solution : string prop option; [@option]
  authentication : authentication list;
      [@default []] [@yojson_drop_default ( = )]
  secret_store : secret_store list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_connection) -> ()

let yojson_of_azurerm_spring_cloud_connection =
  (function
   | {
       client_type = v_client_type;
       id = v_id;
       name = v_name;
       spring_cloud_id = v_spring_cloud_id;
       target_resource_id = v_target_resource_id;
       vnet_solution = v_vnet_solution;
       authentication = v_authentication;
       secret_store = v_secret_store;
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
         if [] = v_secret_store then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secret_store) v_secret_store
           in
           let bnd = "secret_store", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_authentication then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authentication)
               v_authentication
           in
           let bnd = "authentication", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vnet_solution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vnet_solution", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_resource_id
         in
         ("target_resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_id
         in
         ("spring_cloud_id", arg) :: bnds
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
         match v_client_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_connection

[@@@deriving.end]

let authentication ?certificate ?client_id ?name ?principal_id
    ?secret ?subscription_id ~type_ () : authentication =
  {
    certificate;
    client_id;
    name;
    principal_id;
    secret;
    subscription_id;
    type_;
  }

let secret_store ~key_vault_id () : secret_store = { key_vault_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_connection ?client_type ?id ?vnet_solution
    ?(secret_store = []) ?timeouts ~name ~spring_cloud_id
    ~target_resource_id ~authentication () :
    azurerm_spring_cloud_connection =
  {
    client_type;
    id;
    name;
    spring_cloud_id;
    target_resource_id;
    vnet_solution;
    authentication;
    secret_store;
    timeouts;
  }

type t = {
  tf_name : string;
  client_type : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_id : string prop;
  target_resource_id : string prop;
  vnet_solution : string prop;
}

let make ?client_type ?id ?vnet_solution ?(secret_store = [])
    ?timeouts ~name ~spring_cloud_id ~target_resource_id
    ~authentication __id =
  let __type = "azurerm_spring_cloud_connection" in
  let __attrs =
    ({
       tf_name = __id;
       client_type = Prop.computed __type __id "client_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       spring_cloud_id = Prop.computed __type __id "spring_cloud_id";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
       vnet_solution = Prop.computed __type __id "vnet_solution";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_connection
        (azurerm_spring_cloud_connection ?client_type ?id
           ?vnet_solution ~secret_store ?timeouts ~name
           ~spring_cloud_id ~target_resource_id ~authentication ());
    attrs = __attrs;
  }

let register ?tf_module ?client_type ?id ?vnet_solution
    ?(secret_store = []) ?timeouts ~name ~spring_cloud_id
    ~target_resource_id ~authentication __id =
  let (r : _ Tf_core.resource) =
    make ?client_type ?id ?vnet_solution ~secret_store ?timeouts
      ~name ~spring_cloud_id ~target_resource_id ~authentication __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

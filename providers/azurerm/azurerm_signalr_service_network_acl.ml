(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type private_endpoint = {
  allowed_request_types : string prop list option; [@option]
  denied_request_types : string prop list option; [@option]
  id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_endpoint) -> ()

let yojson_of_private_endpoint =
  (function
   | {
       allowed_request_types = v_allowed_request_types;
       denied_request_types = v_denied_request_types;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_denied_request_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "denied_request_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_request_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_request_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : private_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_endpoint

[@@@deriving.end]

type public_network = {
  allowed_request_types : string prop list option; [@option]
  denied_request_types : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : public_network) -> ()

let yojson_of_public_network =
  (function
   | {
       allowed_request_types = v_allowed_request_types;
       denied_request_types = v_denied_request_types;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_denied_request_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "denied_request_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_request_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_request_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : public_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_public_network

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

type azurerm_signalr_service_network_acl = {
  default_action : string prop;
  id : string prop option; [@option]
  signalr_service_id : string prop;
  private_endpoint : private_endpoint list;
      [@default []] [@yojson_drop_default ( = )]
  public_network : public_network list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_signalr_service_network_acl) -> ()

let yojson_of_azurerm_signalr_service_network_acl =
  (function
   | {
       default_action = v_default_action;
       id = v_id;
       signalr_service_id = v_signalr_service_id;
       private_endpoint = v_private_endpoint;
       public_network = v_public_network;
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
         if [] = v_public_network then bnds
         else
           let arg =
             (yojson_of_list yojson_of_public_network)
               v_public_network
           in
           let bnd = "public_network", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_private_endpoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_private_endpoint)
               v_private_endpoint
           in
           let bnd = "private_endpoint", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_signalr_service_id
         in
         ("signalr_service_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_default_action
         in
         ("default_action", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_signalr_service_network_acl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_signalr_service_network_acl

[@@@deriving.end]

let private_endpoint ?allowed_request_types ?denied_request_types ~id
    () : private_endpoint =
  { allowed_request_types; denied_request_types; id }

let public_network ?allowed_request_types ?denied_request_types () :
    public_network =
  { allowed_request_types; denied_request_types }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_signalr_service_network_acl ?id ?timeouts ~default_action
    ~signalr_service_id ~private_endpoint ~public_network () :
    azurerm_signalr_service_network_acl =
  {
    default_action;
    id;
    signalr_service_id;
    private_endpoint;
    public_network;
    timeouts;
  }

type t = {
  tf_name : string;
  default_action : string prop;
  id : string prop;
  signalr_service_id : string prop;
}

let make ?id ?timeouts ~default_action ~signalr_service_id
    ~private_endpoint ~public_network __id =
  let __type = "azurerm_signalr_service_network_acl" in
  let __attrs =
    ({
       tf_name = __id;
       default_action = Prop.computed __type __id "default_action";
       id = Prop.computed __type __id "id";
       signalr_service_id =
         Prop.computed __type __id "signalr_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_signalr_service_network_acl
        (azurerm_signalr_service_network_acl ?id ?timeouts
           ~default_action ~signalr_service_id ~private_endpoint
           ~public_network ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~default_action
    ~signalr_service_id ~private_endpoint ~public_network __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~default_action ~signalr_service_id
      ~private_endpoint ~public_network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

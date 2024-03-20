(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type private_endpoint = {
  allowed_request_types : string prop list option; [@option]
      (** allowed_request_types *)
  denied_request_types : string prop list option; [@option]
      (** denied_request_types *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** private_endpoint *)

type public_network = {
  allowed_request_types : string prop list option; [@option]
      (** allowed_request_types *)
  denied_request_types : string prop list option; [@option]
      (** denied_request_types *)
}
[@@deriving yojson_of]
(** public_network *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_signalr_service_network_acl = {
  default_action : string prop;  (** default_action *)
  id : string prop option; [@option]  (** id *)
  signalr_service_id : string prop;  (** signalr_service_id *)
  private_endpoint : private_endpoint list;
  public_network : public_network list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_signalr_service_network_acl *)

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
  default_action : string prop;
  id : string prop;
  signalr_service_id : string prop;
}

let make ?id ?timeouts ~default_action ~signalr_service_id
    ~private_endpoint ~public_network __id =
  let __type = "azurerm_signalr_service_network_acl" in
  let __attrs =
    ({
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

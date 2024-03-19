(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type live_trace = {
  connectivity_logs_enabled : bool prop option; [@option]
      (** connectivity_logs_enabled *)
  enabled : bool prop option; [@option]  (** enabled *)
  http_request_logs_enabled : bool prop option; [@option]
      (** http_request_logs_enabled *)
  messaging_logs_enabled : bool prop option; [@option]
      (** messaging_logs_enabled *)
}
[@@deriving yojson_of]
(** live_trace *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_web_pubsub = {
  aad_auth_enabled : bool prop option; [@option]
      (** aad_auth_enabled *)
  capacity : float prop option; [@option]  (** capacity *)
  id : string prop option; [@option]  (** id *)
  local_auth_enabled : bool prop option; [@option]
      (** local_auth_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tls_client_cert_enabled : bool prop option; [@option]
      (** tls_client_cert_enabled *)
  identity : identity list;
  live_trace : live_trace list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_pubsub *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let live_trace ?connectivity_logs_enabled ?enabled
    ?http_request_logs_enabled ?messaging_logs_enabled () :
    live_trace =
  {
    connectivity_logs_enabled;
    enabled;
    http_request_logs_enabled;
    messaging_logs_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_web_pubsub ?aad_auth_enabled ?capacity ?id
    ?local_auth_enabled ?public_network_access_enabled ?tags
    ?tls_client_cert_enabled ?timeouts ~location ~name
    ~resource_group_name ~sku ~identity ~live_trace () :
    azurerm_web_pubsub =
  {
    aad_auth_enabled;
    capacity;
    id;
    local_auth_enabled;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    sku;
    tags;
    tls_client_cert_enabled;
    identity;
    live_trace;
    timeouts;
  }

type t = {
  aad_auth_enabled : bool prop;
  capacity : float prop;
  external_ip : string prop;
  hostname : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  name : string prop;
  primary_access_key : string prop;
  primary_connection_string : string prop;
  public_network_access_enabled : bool prop;
  public_port : float prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  secondary_connection_string : string prop;
  server_port : float prop;
  sku : string prop;
  tags : (string * string) list prop;
  tls_client_cert_enabled : bool prop;
  version : string prop;
}

let register ?tf_module ?aad_auth_enabled ?capacity ?id
    ?local_auth_enabled ?public_network_access_enabled ?tags
    ?tls_client_cert_enabled ?timeouts ~location ~name
    ~resource_group_name ~sku ~identity ~live_trace __resource_id =
  let __resource_type = "azurerm_web_pubsub" in
  let __resource =
    azurerm_web_pubsub ?aad_auth_enabled ?capacity ?id
      ?local_auth_enabled ?public_network_access_enabled ?tags
      ?tls_client_cert_enabled ?timeouts ~location ~name
      ~resource_group_name ~sku ~identity ~live_trace ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_pubsub __resource);
  let __resource_attributes =
    ({
       aad_auth_enabled =
         Prop.computed __resource_type __resource_id
           "aad_auth_enabled";
       capacity =
         Prop.computed __resource_type __resource_id "capacity";
       external_ip =
         Prop.computed __resource_type __resource_id "external_ip";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       local_auth_enabled =
         Prop.computed __resource_type __resource_id
           "local_auth_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       primary_access_key =
         Prop.computed __resource_type __resource_id
           "primary_access_key";
       primary_connection_string =
         Prop.computed __resource_type __resource_id
           "primary_connection_string";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       public_port =
         Prop.computed __resource_type __resource_id "public_port";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_access_key =
         Prop.computed __resource_type __resource_id
           "secondary_access_key";
       secondary_connection_string =
         Prop.computed __resource_type __resource_id
           "secondary_connection_string";
       server_port =
         Prop.computed __resource_type __resource_id "server_port";
       sku = Prop.computed __resource_type __resource_id "sku";
       tags = Prop.computed __resource_type __resource_id "tags";
       tls_client_cert_enabled =
         Prop.computed __resource_type __resource_id
           "tls_client_cert_enabled";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes

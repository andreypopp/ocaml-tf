(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sso = {
  client_id : string prop option; [@option]  (** client_id *)
  client_secret : string prop option; [@option]  (** client_secret *)
  issuer_uri : string prop option; [@option]  (** issuer_uri *)
  scope : string prop list option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** sso *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_api_portal = {
  api_try_out_enabled : bool prop option; [@option]
      (** api_try_out_enabled *)
  gateway_ids : string prop list option; [@option]
      (** gateway_ids *)
  https_only_enabled : bool prop option; [@option]
      (** https_only_enabled *)
  id : string prop option; [@option]  (** id *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  sso : sso list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_api_portal *)

let sso ?client_id ?client_secret ?issuer_uri ?scope () : sso =
  { client_id; client_secret; issuer_uri; scope }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_api_portal ?api_try_out_enabled ?gateway_ids
    ?https_only_enabled ?id ?instance_count
    ?public_network_access_enabled ?timeouts ~name
    ~spring_cloud_service_id ~sso () :
    azurerm_spring_cloud_api_portal =
  {
    api_try_out_enabled;
    gateway_ids;
    https_only_enabled;
    id;
    instance_count;
    name;
    public_network_access_enabled;
    spring_cloud_service_id;
    sso;
    timeouts;
  }

type t = {
  api_try_out_enabled : bool prop;
  gateway_ids : string list prop;
  https_only_enabled : bool prop;
  id : string prop;
  instance_count : float prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  spring_cloud_service_id : string prop;
  url : string prop;
}

let make ?api_try_out_enabled ?gateway_ids ?https_only_enabled ?id
    ?instance_count ?public_network_access_enabled ?timeouts ~name
    ~spring_cloud_service_id ~sso __id =
  let __type = "azurerm_spring_cloud_api_portal" in
  let __attrs =
    ({
       api_try_out_enabled =
         Prop.computed __type __id "api_try_out_enabled";
       gateway_ids = Prop.computed __type __id "gateway_ids";
       https_only_enabled =
         Prop.computed __type __id "https_only_enabled";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_api_portal
        (azurerm_spring_cloud_api_portal ?api_try_out_enabled
           ?gateway_ids ?https_only_enabled ?id ?instance_count
           ?public_network_access_enabled ?timeouts ~name
           ~spring_cloud_service_id ~sso ());
    attrs = __attrs;
  }

let register ?tf_module ?api_try_out_enabled ?gateway_ids
    ?https_only_enabled ?id ?instance_count
    ?public_network_access_enabled ?timeouts ~name
    ~spring_cloud_service_id ~sso __id =
  let (r : _ Tf_core.resource) =
    make ?api_try_out_enabled ?gateway_ids ?https_only_enabled ?id
      ?instance_count ?public_network_access_enabled ?timeouts ~name
      ~spring_cloud_service_id ~sso __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type open_api = { uri : string prop option [@option]  (** uri *) }
[@@deriving yojson_of]
(** open_api *)

type route = {
  classification_tags : string prop list option; [@option]
      (** classification_tags *)
  description : string prop option; [@option]  (** description *)
  filters : string prop list option; [@option]  (** filters *)
  order : float prop;  (** order *)
  predicates : string prop list option; [@option]  (** predicates *)
  sso_validation_enabled : bool prop option; [@option]
      (** sso_validation_enabled *)
  title : string prop option; [@option]  (** title *)
  token_relay : bool prop option; [@option]  (** token_relay *)
  uri : string prop option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** route *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_gateway_route_config = {
  filters : string prop list option; [@option]  (** filters *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  predicates : string prop list option; [@option]  (** predicates *)
  protocol : string prop option; [@option]  (** protocol *)
  spring_cloud_app_id : string prop option; [@option]
      (** spring_cloud_app_id *)
  spring_cloud_gateway_id : string prop;
      (** spring_cloud_gateway_id *)
  sso_validation_enabled : bool prop option; [@option]
      (** sso_validation_enabled *)
  open_api : open_api list;
  route : route list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway_route_config *)

let open_api ?uri () : open_api = { uri }

let route ?classification_tags ?description ?filters ?predicates
    ?sso_validation_enabled ?title ?token_relay ?uri ~order () :
    route =
  {
    classification_tags;
    description;
    filters;
    order;
    predicates;
    sso_validation_enabled;
    title;
    token_relay;
    uri;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_gateway_route_config ?filters ?id
    ?predicates ?protocol ?spring_cloud_app_id
    ?sso_validation_enabled ?timeouts ~name ~spring_cloud_gateway_id
    ~open_api ~route () : azurerm_spring_cloud_gateway_route_config =
  {
    filters;
    id;
    name;
    predicates;
    protocol;
    spring_cloud_app_id;
    spring_cloud_gateway_id;
    sso_validation_enabled;
    open_api;
    route;
    timeouts;
  }

type t = {
  filters : string list prop;
  id : string prop;
  name : string prop;
  predicates : string list prop;
  protocol : string prop;
  spring_cloud_app_id : string prop;
  spring_cloud_gateway_id : string prop;
  sso_validation_enabled : bool prop;
}

let make ?filters ?id ?predicates ?protocol ?spring_cloud_app_id
    ?sso_validation_enabled ?timeouts ~name ~spring_cloud_gateway_id
    ~open_api ~route __id =
  let __type = "azurerm_spring_cloud_gateway_route_config" in
  let __attrs =
    ({
       filters = Prop.computed __type __id "filters";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       predicates = Prop.computed __type __id "predicates";
       protocol = Prop.computed __type __id "protocol";
       spring_cloud_app_id =
         Prop.computed __type __id "spring_cloud_app_id";
       spring_cloud_gateway_id =
         Prop.computed __type __id "spring_cloud_gateway_id";
       sso_validation_enabled =
         Prop.computed __type __id "sso_validation_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_gateway_route_config
        (azurerm_spring_cloud_gateway_route_config ?filters ?id
           ?predicates ?protocol ?spring_cloud_app_id
           ?sso_validation_enabled ?timeouts ~name
           ~spring_cloud_gateway_id ~open_api ~route ());
    attrs = __attrs;
  }

let register ?tf_module ?filters ?id ?predicates ?protocol
    ?spring_cloud_app_id ?sso_validation_enabled ?timeouts ~name
    ~spring_cloud_gateway_id ~open_api ~route __id =
  let (r : _ Tf_core.resource) =
    make ?filters ?id ?predicates ?protocol ?spring_cloud_app_id
      ?sso_validation_enabled ?timeouts ~name
      ~spring_cloud_gateway_id ~open_api ~route __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

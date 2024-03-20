(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type nat_ip_configuration = {
  name : string prop;  (** name *)
  primary : bool prop;  (** primary *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_address_version : string prop option; [@option]
      (** private_ip_address_version *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** nat_ip_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_private_link_service = {
  auto_approval_subscription_ids : string prop list option; [@option]
      (** auto_approval_subscription_ids *)
  enable_proxy_protocol : bool prop option; [@option]
      (** enable_proxy_protocol *)
  fqdns : string prop list option; [@option]  (** fqdns *)
  id : string prop option; [@option]  (** id *)
  load_balancer_frontend_ip_configuration_ids : string prop list;
      (** load_balancer_frontend_ip_configuration_ids *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  visibility_subscription_ids : string prop list option; [@option]
      (** visibility_subscription_ids *)
  nat_ip_configuration : nat_ip_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_link_service *)

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
  alias : string prop;
  auto_approval_subscription_ids : string list prop;
  enable_proxy_protocol : bool prop;
  fqdns : string list prop;
  id : string prop;
  load_balancer_frontend_ip_configuration_ids : string list prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  visibility_subscription_ids : string list prop;
}

let make ?auto_approval_subscription_ids ?enable_proxy_protocol
    ?fqdns ?id ?tags ?visibility_subscription_ids ?timeouts
    ~load_balancer_frontend_ip_configuration_ids ~location ~name
    ~resource_group_name ~nat_ip_configuration __id =
  let __type = "azurerm_private_link_service" in
  let __attrs =
    ({
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

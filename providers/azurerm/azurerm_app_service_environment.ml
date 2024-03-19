(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cluster_setting = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** cluster_setting *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_app_service_environment = {
  allowed_user_ip_cidrs : string prop list option; [@option]
      (** allowed_user_ip_cidrs *)
  front_end_scale_factor : float prop option; [@option]
      (** front_end_scale_factor *)
  id : string prop option; [@option]  (** id *)
  internal_load_balancing_mode : string prop option; [@option]
      (** internal_load_balancing_mode *)
  name : string prop;  (** name *)
  pricing_tier : string prop option; [@option]  (** pricing_tier *)
  resource_group_name : string prop;  (** resource_group_name *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  cluster_setting : cluster_setting list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_environment *)

let cluster_setting ~name ~value () : cluster_setting =
  { name; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_environment ?allowed_user_ip_cidrs
    ?front_end_scale_factor ?id ?internal_load_balancing_mode
    ?pricing_tier ?tags ?timeouts ~name ~resource_group_name
    ~subnet_id ~cluster_setting () : azurerm_app_service_environment
    =
  {
    allowed_user_ip_cidrs;
    front_end_scale_factor;
    id;
    internal_load_balancing_mode;
    name;
    pricing_tier;
    resource_group_name;
    subnet_id;
    tags;
    cluster_setting;
    timeouts;
  }

type t = {
  allowed_user_ip_cidrs : string list prop;
  front_end_scale_factor : float prop;
  id : string prop;
  internal_ip_address : string prop;
  internal_load_balancing_mode : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string list prop;
  pricing_tier : string prop;
  resource_group_name : string prop;
  service_ip_address : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?allowed_user_ip_cidrs
    ?front_end_scale_factor ?id ?internal_load_balancing_mode
    ?pricing_tier ?tags ?timeouts ~name ~resource_group_name
    ~subnet_id ~cluster_setting __resource_id =
  let __resource_type = "azurerm_app_service_environment" in
  let __resource =
    azurerm_app_service_environment ?allowed_user_ip_cidrs
      ?front_end_scale_factor ?id ?internal_load_balancing_mode
      ?pricing_tier ?tags ?timeouts ~name ~resource_group_name
      ~subnet_id ~cluster_setting ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_environment __resource);
  let __resource_attributes =
    ({
       allowed_user_ip_cidrs =
         Prop.computed __resource_type __resource_id
           "allowed_user_ip_cidrs";
       front_end_scale_factor =
         Prop.computed __resource_type __resource_id
           "front_end_scale_factor";
       id = Prop.computed __resource_type __resource_id "id";
       internal_ip_address =
         Prop.computed __resource_type __resource_id
           "internal_ip_address";
       internal_load_balancing_mode =
         Prop.computed __resource_type __resource_id
           "internal_load_balancing_mode";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       outbound_ip_addresses =
         Prop.computed __resource_type __resource_id
           "outbound_ip_addresses";
       pricing_tier =
         Prop.computed __resource_type __resource_id "pricing_tier";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       service_ip_address =
         Prop.computed __resource_type __resource_id
           "service_ip_address";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

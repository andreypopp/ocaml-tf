(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type custom_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** custom_header *)

type subnet = {
  first : string prop;  (** first *)
  last : string prop option; [@option]  (** last *)
  scope : float prop option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** subnet *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_traffic_manager_azure_endpoint = {
  always_serve_enabled : bool prop option; [@option]
      (** always_serve_enabled *)
  enabled : bool prop option; [@option]  (** enabled *)
  geo_mappings : string prop list option; [@option]
      (** geo_mappings *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  profile_id : string prop;  (** profile_id *)
  target_resource_id : string prop;  (** target_resource_id *)
  weight : float prop option; [@option]  (** weight *)
  custom_header : custom_header list;
  subnet : subnet list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_azure_endpoint *)

let custom_header ~name ~value () : custom_header = { name; value }
let subnet ?last ?scope ~first () : subnet = { first; last; scope }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_traffic_manager_azure_endpoint ?always_serve_enabled
    ?enabled ?geo_mappings ?id ?priority ?weight ?timeouts ~name
    ~profile_id ~target_resource_id ~custom_header ~subnet () :
    azurerm_traffic_manager_azure_endpoint =
  {
    always_serve_enabled;
    enabled;
    geo_mappings;
    id;
    name;
    priority;
    profile_id;
    target_resource_id;
    weight;
    custom_header;
    subnet;
    timeouts;
  }

type t = {
  always_serve_enabled : bool prop;
  enabled : bool prop;
  geo_mappings : string list prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  profile_id : string prop;
  target_resource_id : string prop;
  weight : float prop;
}

let register ?tf_module ?always_serve_enabled ?enabled ?geo_mappings
    ?id ?priority ?weight ?timeouts ~name ~profile_id
    ~target_resource_id ~custom_header ~subnet __resource_id =
  let __resource_type = "azurerm_traffic_manager_azure_endpoint" in
  let __resource =
    azurerm_traffic_manager_azure_endpoint ?always_serve_enabled
      ?enabled ?geo_mappings ?id ?priority ?weight ?timeouts ~name
      ~profile_id ~target_resource_id ~custom_header ~subnet ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_traffic_manager_azure_endpoint __resource);
  let __resource_attributes =
    ({
       always_serve_enabled =
         Prop.computed __resource_type __resource_id
           "always_serve_enabled";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       geo_mappings =
         Prop.computed __resource_type __resource_id "geo_mappings";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       profile_id =
         Prop.computed __resource_type __resource_id "profile_id";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
       weight = Prop.computed __resource_type __resource_id "weight";
     }
      : t)
  in
  __resource_attributes

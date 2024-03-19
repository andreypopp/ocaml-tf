(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iothub_route = {
  condition : string prop option; [@option]  (** condition *)
  enabled : bool prop;  (** enabled *)
  endpoint_names : string prop list;  (** endpoint_names *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source : string prop;  (** source *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_route *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_route ?condition ?id ?timeouts ~enabled
    ~endpoint_names ~iothub_name ~name ~resource_group_name ~source
    () : azurerm_iothub_route =
  {
    condition;
    enabled;
    endpoint_names;
    id;
    iothub_name;
    name;
    resource_group_name;
    source;
    timeouts;
  }

type t = {
  condition : string prop;
  enabled : bool prop;
  endpoint_names : string list prop;
  id : string prop;
  iothub_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  source : string prop;
}

let register ?tf_module ?condition ?id ?timeouts ~enabled
    ~endpoint_names ~iothub_name ~name ~resource_group_name ~source
    __resource_id =
  let __resource_type = "azurerm_iothub_route" in
  let __resource =
    azurerm_iothub_route ?condition ?id ?timeouts ~enabled
      ~endpoint_names ~iothub_name ~name ~resource_group_name ~source
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_route __resource);
  let __resource_attributes =
    ({
       condition =
         Prop.computed __resource_type __resource_id "condition";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       endpoint_names =
         Prop.computed __resource_type __resource_id "endpoint_names";
       id = Prop.computed __resource_type __resource_id "id";
       iothub_name =
         Prop.computed __resource_type __resource_id "iothub_name";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       source = Prop.computed __resource_type __resource_id "source";
     }
      : t)
  in
  __resource_attributes

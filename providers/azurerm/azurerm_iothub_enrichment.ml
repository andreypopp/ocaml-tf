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

type azurerm_iothub_enrichment = {
  endpoint_names : string prop list;  (** endpoint_names *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  key : string prop;  (** key *)
  resource_group_name : string prop;  (** resource_group_name *)
  value : string prop;  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_enrichment *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_enrichment ?id ?timeouts ~endpoint_names
    ~iothub_name ~key ~resource_group_name ~value () :
    azurerm_iothub_enrichment =
  {
    endpoint_names;
    id;
    iothub_name;
    key;
    resource_group_name;
    value;
    timeouts;
  }

type t = {
  endpoint_names : string list prop;
  id : string prop;
  iothub_name : string prop;
  key : string prop;
  resource_group_name : string prop;
  value : string prop;
}

let register ?tf_module ?id ?timeouts ~endpoint_names ~iothub_name
    ~key ~resource_group_name ~value __resource_id =
  let __resource_type = "azurerm_iothub_enrichment" in
  let __resource =
    azurerm_iothub_enrichment ?id ?timeouts ~endpoint_names
      ~iothub_name ~key ~resource_group_name ~value ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_enrichment __resource);
  let __resource_attributes =
    ({
       endpoint_names =
         Prop.computed __resource_type __resource_id "endpoint_names";
       id = Prop.computed __resource_type __resource_id "id";
       iothub_name =
         Prop.computed __resource_type __resource_id "iothub_name";
       key = Prop.computed __resource_type __resource_id "key";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes

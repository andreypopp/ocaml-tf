(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_slice__single_network_slice_selection_assistance_information = {
  slice_differentiator : string prop option; [@option]
      (** slice_differentiator *)
  slice_service_type : float prop;  (** slice_service_type *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_slice__single_network_slice_selection_assistance_information *)

type azurerm_mobile_network_slice__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_slice__timeouts *)

type azurerm_mobile_network_slice = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mobile_network_id : string prop;  (** mobile_network_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  single_network_slice_selection_assistance_information :
    azurerm_mobile_network_slice__single_network_slice_selection_assistance_information
    list;
  timeouts : azurerm_mobile_network_slice__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_slice *)

type t = {
  description : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let azurerm_mobile_network_slice ?description ?id ?tags ?timeouts
    ~location ~mobile_network_id ~name
    ~single_network_slice_selection_assistance_information
    __resource_id =
  let __resource_type = "azurerm_mobile_network_slice" in
  let __resource =
    ({
       description;
       id;
       location;
       mobile_network_id;
       name;
       tags;
       single_network_slice_selection_assistance_information;
       timeouts;
     }
      : azurerm_mobile_network_slice)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_slice __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       mobile_network_id =
         Prop.computed __resource_type __resource_id
           "mobile_network_id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

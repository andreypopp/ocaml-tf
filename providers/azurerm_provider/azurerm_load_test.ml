(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_load_test__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_load_test__identity *)

type azurerm_load_test__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_load_test__timeouts *)

type azurerm_load_test = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_load_test__identity list;
  timeouts : azurerm_load_test__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_load_test *)

type t = {
  data_plane_uri : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_load_test ?description ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_load_test" in
  let __resource =
    ({
       description;
       id;
       location;
       name;
       resource_group_name;
       tags;
       identity;
       timeouts;
     }
      : azurerm_load_test)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_load_test __resource);
  let __resource_attributes =
    ({
       data_plane_uri =
         Prop.computed __resource_type __resource_id "data_plane_uri";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

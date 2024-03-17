(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_center_project__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_center_project__timeouts *)

type azurerm_dev_center_project = {
  description : string prop option; [@option]  (** description *)
  dev_center_id : string prop;  (** dev_center_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  maximum_dev_boxes_per_user : float prop option; [@option]
      (** maximum_dev_boxes_per_user *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_dev_center_project__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_center_project *)

let azurerm_dev_center_project ?description ?id
    ?maximum_dev_boxes_per_user ?tags ?timeouts ~dev_center_id
    ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_dev_center_project" in
  let __resource =
    {
      description;
      dev_center_id;
      id;
      location;
      maximum_dev_boxes_per_user;
      name;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_center_project __resource);
  ()

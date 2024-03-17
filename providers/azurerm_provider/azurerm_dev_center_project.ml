(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_center_project__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_center_project__timeouts *)

type azurerm_dev_center_project = {
  description : string option; [@option]  (** description *)
  dev_center_id : string;  (** dev_center_id *)
  location : string;  (** location *)
  maximum_dev_boxes_per_user : float option; [@option]
      (** maximum_dev_boxes_per_user *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_dev_center_project__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_center_project *)

let azurerm_dev_center_project ?description
    ?maximum_dev_boxes_per_user ?tags ?timeouts ~dev_center_id
    ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_dev_center_project" in
  let __resource =
    {
      description;
      dev_center_id;
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

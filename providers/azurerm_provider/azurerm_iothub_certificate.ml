(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_certificate__timeouts *)

type azurerm_iothub_certificate = {
  certificate_content : string;  (** certificate_content *)
  iothub_name : string;  (** iothub_name *)
  is_verified : bool option; [@option]  (** is_verified *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_iothub_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_certificate *)

let azurerm_iothub_certificate ?is_verified ?timeouts
    ~certificate_content ~iothub_name ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_iothub_certificate" in
  let __resource =
    {
      certificate_content;
      iothub_name;
      is_verified;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_certificate __resource);
  ()

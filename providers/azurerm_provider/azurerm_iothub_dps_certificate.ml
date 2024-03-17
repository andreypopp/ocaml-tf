(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_dps_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_dps_certificate__timeouts *)

type azurerm_iothub_dps_certificate = {
  certificate_content : string prop;  (** certificate_content *)
  id : string prop option; [@option]  (** id *)
  iot_dps_name : string prop;  (** iot_dps_name *)
  is_verified : bool prop option; [@option]  (** is_verified *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_iothub_dps_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_dps_certificate *)

let azurerm_iothub_dps_certificate ?id ?is_verified ?timeouts
    ~certificate_content ~iot_dps_name ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_iothub_dps_certificate" in
  let __resource =
    {
      certificate_content;
      id;
      iot_dps_name;
      is_verified;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_dps_certificate __resource);
  ()

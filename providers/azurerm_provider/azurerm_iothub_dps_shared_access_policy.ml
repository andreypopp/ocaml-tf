(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_dps_shared_access_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_dps_shared_access_policy__timeouts *)

type azurerm_iothub_dps_shared_access_policy = {
  enrollment_read : bool option; [@option]  (** enrollment_read *)
  enrollment_write : bool option; [@option]  (** enrollment_write *)
  iothub_dps_name : string;  (** iothub_dps_name *)
  name : string;  (** name *)
  registration_read : bool option; [@option]
      (** registration_read *)
  registration_write : bool option; [@option]
      (** registration_write *)
  resource_group_name : string;  (** resource_group_name *)
  service_config : bool option; [@option]  (** service_config *)
  timeouts : azurerm_iothub_dps_shared_access_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_dps_shared_access_policy *)

let azurerm_iothub_dps_shared_access_policy ?enrollment_read
    ?enrollment_write ?registration_read ?registration_write
    ?service_config ?timeouts ~iothub_dps_name ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_iothub_dps_shared_access_policy" in
  let __resource =
    {
      enrollment_read;
      enrollment_write;
      iothub_dps_name;
      name;
      registration_read;
      registration_write;
      resource_group_name;
      service_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_dps_shared_access_policy __resource);
  ()

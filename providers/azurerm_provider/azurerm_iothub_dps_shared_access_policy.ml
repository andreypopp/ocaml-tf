(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_dps_shared_access_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_dps_shared_access_policy__timeouts *)

type azurerm_iothub_dps_shared_access_policy = {
  enrollment_read : bool prop option; [@option]
      (** enrollment_read *)
  enrollment_write : bool prop option; [@option]
      (** enrollment_write *)
  id : string prop option; [@option]  (** id *)
  iothub_dps_name : string prop;  (** iothub_dps_name *)
  name : string prop;  (** name *)
  registration_read : bool prop option; [@option]
      (** registration_read *)
  registration_write : bool prop option; [@option]
      (** registration_write *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_config : bool prop option; [@option]  (** service_config *)
  timeouts : azurerm_iothub_dps_shared_access_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_dps_shared_access_policy *)

let azurerm_iothub_dps_shared_access_policy ?enrollment_read
    ?enrollment_write ?id ?registration_read ?registration_write
    ?service_config ?timeouts ~iothub_dps_name ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_iothub_dps_shared_access_policy" in
  let __resource =
    {
      enrollment_read;
      enrollment_write;
      id;
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

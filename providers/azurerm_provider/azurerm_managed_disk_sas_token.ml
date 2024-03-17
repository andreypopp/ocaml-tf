(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_managed_disk_sas_token__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_managed_disk_sas_token__timeouts *)

type azurerm_managed_disk_sas_token = {
  access_level : string;  (** access_level *)
  duration_in_seconds : float;  (** duration_in_seconds *)
  id : string option; [@option]  (** id *)
  managed_disk_id : string;  (** managed_disk_id *)
  timeouts : azurerm_managed_disk_sas_token__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_managed_disk_sas_token *)

let azurerm_managed_disk_sas_token ?id ?timeouts ~access_level
    ~duration_in_seconds ~managed_disk_id __resource_id =
  let __resource_type = "azurerm_managed_disk_sas_token" in
  let __resource =
    {
      access_level;
      duration_in_seconds;
      id;
      managed_disk_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_managed_disk_sas_token __resource);
  ()

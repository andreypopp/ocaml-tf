(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_application_security_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_security_group__timeouts *)

type azurerm_application_security_group = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_application_security_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_security_group *)

let azurerm_application_security_group ?tags ?timeouts ~location
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_application_security_group" in
  let __resource =
    { location; name; resource_group_name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_security_group __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_batch_application__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_batch_application__timeouts *)

type azurerm_batch_application = {
  account_name : string;  (** account_name *)
  allow_updates : bool option; [@option]  (** allow_updates *)
  default_version : string option; [@option]  (** default_version *)
  display_name : string option; [@option]  (** display_name *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_batch_application__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_batch_application *)

let azurerm_batch_application ?allow_updates ?default_version
    ?display_name ?id ?timeouts ~account_name ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_batch_application" in
  let __resource =
    {
      account_name;
      allow_updates;
      default_version;
      display_name;
      id;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_batch_application __resource);
  ()

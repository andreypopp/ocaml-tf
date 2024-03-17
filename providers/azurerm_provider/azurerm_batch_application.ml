(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_batch_application__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_batch_application__timeouts *)

type azurerm_batch_application = {
  account_name : string prop;  (** account_name *)
  allow_updates : bool prop option; [@option]  (** allow_updates *)
  default_version : string prop option; [@option]
      (** default_version *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
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

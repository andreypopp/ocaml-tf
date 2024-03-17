(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_federated_identity_credential__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_federated_identity_credential__timeouts *)

type azurerm_federated_identity_credential = {
  audience : string list;  (** audience *)
  issuer : string;  (** issuer *)
  name : string;  (** name *)
  parent_id : string;  (** parent_id *)
  resource_group_name : string;  (** resource_group_name *)
  subject : string;  (** subject *)
  timeouts : azurerm_federated_identity_credential__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_federated_identity_credential *)

let azurerm_federated_identity_credential ?timeouts ~audience ~issuer
    ~name ~parent_id ~resource_group_name ~subject __resource_id =
  let __resource_type = "azurerm_federated_identity_credential" in
  let __resource =
    {
      audience;
      issuer;
      name;
      parent_id;
      resource_group_name;
      subject;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_federated_identity_credential __resource);
  ()

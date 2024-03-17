(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_federated_identity_credential__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_federated_identity_credential__timeouts *)

type azurerm_federated_identity_credential = {
  audience : string prop list;  (** audience *)
  id : string prop option; [@option]  (** id *)
  issuer : string prop;  (** issuer *)
  name : string prop;  (** name *)
  parent_id : string prop;  (** parent_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  subject : string prop;  (** subject *)
  timeouts : azurerm_federated_identity_credential__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_federated_identity_credential *)

let azurerm_federated_identity_credential ?id ?timeouts ~audience
    ~issuer ~name ~parent_id ~resource_group_name ~subject
    __resource_id =
  let __resource_type = "azurerm_federated_identity_credential" in
  let __resource =
    {
      audience;
      id;
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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_federated_identity_credential = {
  audience : string prop list;  (** audience *)
  id : string prop option; [@option]  (** id *)
  issuer : string prop;  (** issuer *)
  name : string prop;  (** name *)
  parent_id : string prop;  (** parent_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  subject : string prop;  (** subject *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_federated_identity_credential *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_federated_identity_credential ?id ?timeouts ~audience
    ~issuer ~name ~parent_id ~resource_group_name ~subject () :
    azurerm_federated_identity_credential =
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

type t = {
  audience : string list prop;
  id : string prop;
  issuer : string prop;
  name : string prop;
  parent_id : string prop;
  resource_group_name : string prop;
  subject : string prop;
}

let register ?tf_module ?id ?timeouts ~audience ~issuer ~name
    ~parent_id ~resource_group_name ~subject __resource_id =
  let __resource_type = "azurerm_federated_identity_credential" in
  let __resource =
    azurerm_federated_identity_credential ?id ?timeouts ~audience
      ~issuer ~name ~parent_id ~resource_group_name ~subject ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_federated_identity_credential __resource);
  let __resource_attributes =
    ({
       audience =
         Prop.computed __resource_type __resource_id "audience";
       id = Prop.computed __resource_type __resource_id "id";
       issuer = Prop.computed __resource_type __resource_id "issuer";
       name = Prop.computed __resource_type __resource_id "name";
       parent_id =
         Prop.computed __resource_type __resource_id "parent_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       subject =
         Prop.computed __resource_type __resource_id "subject";
     }
      : t)
  in
  __resource_attributes

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

type t = {
  account_name : string prop;
  allow_updates : bool prop;
  default_version : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_batch_application ?allow_updates ?default_version
    ?display_name ?id ?timeouts ~account_name ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_batch_application" in
  let __resource =
    ({
       account_name;
       allow_updates;
       default_version;
       display_name;
       id;
       name;
       resource_group_name;
       timeouts;
     }
      : azurerm_batch_application)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_batch_application __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       allow_updates =
         Prop.computed __resource_type __resource_id "allow_updates";
       default_version =
         Prop.computed __resource_type __resource_id
           "default_version";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes

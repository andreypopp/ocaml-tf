(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_batch_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_batch_certificate__timeouts *)

type azurerm_batch_certificate = {
  account_name : string prop;  (** account_name *)
  certificate : string prop;  (** certificate *)
  format : string prop;  (** format *)
  id : string prop option; [@option]  (** id *)
  password : string prop option; [@option]  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  thumbprint : string prop;  (** thumbprint *)
  thumbprint_algorithm : string prop;  (** thumbprint_algorithm *)
  timeouts : azurerm_batch_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_batch_certificate *)

type t = {
  account_name : string prop;
  certificate : string prop;
  format : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  public_data : string prop;
  resource_group_name : string prop;
  thumbprint : string prop;
  thumbprint_algorithm : string prop;
}

let azurerm_batch_certificate ?id ?password ?timeouts ~account_name
    ~certificate ~format ~resource_group_name ~thumbprint
    ~thumbprint_algorithm __resource_id =
  let __resource_type = "azurerm_batch_certificate" in
  let __resource =
    ({
       account_name;
       certificate;
       format;
       id;
       password;
       resource_group_name;
       thumbprint;
       thumbprint_algorithm;
       timeouts;
     }
      : azurerm_batch_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_batch_certificate __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       format = Prop.computed __resource_type __resource_id "format";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       public_data =
         Prop.computed __resource_type __resource_id "public_data";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       thumbprint =
         Prop.computed __resource_type __resource_id "thumbprint";
       thumbprint_algorithm =
         Prop.computed __resource_type __resource_id
           "thumbprint_algorithm";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_batch_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_batch_certificate__timeouts *)

type azurerm_batch_certificate = {
  account_name : string;  (** account_name *)
  certificate : string;  (** certificate *)
  format : string;  (** format *)
  id : string option; [@option]  (** id *)
  password : string option; [@option]  (** password *)
  resource_group_name : string;  (** resource_group_name *)
  thumbprint : string;  (** thumbprint *)
  thumbprint_algorithm : string;  (** thumbprint_algorithm *)
  timeouts : azurerm_batch_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_batch_certificate *)

let azurerm_batch_certificate ?id ?password ?timeouts ~account_name
    ~certificate ~format ~resource_group_name ~thumbprint
    ~thumbprint_algorithm __resource_id =
  let __resource_type = "azurerm_batch_certificate" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_batch_certificate __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_queue__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_queue__timeouts *)

type azurerm_storage_queue = {
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  storage_account_name : string prop;  (** storage_account_name *)
  timeouts : azurerm_storage_queue__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_queue *)

let azurerm_storage_queue ?id ?metadata ?timeouts ~name
    ~storage_account_name __resource_id =
  let __resource_type = "azurerm_storage_queue" in
  let __resource =
    { id; metadata; name; storage_account_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_queue __resource);
  ()

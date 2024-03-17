(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_python3_package__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_python3_package__timeouts *)

type azurerm_automation_python3_package = {
  automation_account_name : string;  (** automation_account_name *)
  content_uri : string;  (** content_uri *)
  content_version : string option; [@option]  (** content_version *)
  hash_algorithm : string option; [@option]  (** hash_algorithm *)
  hash_value : string option; [@option]  (** hash_value *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_automation_python3_package__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_python3_package *)

let azurerm_automation_python3_package ?content_version
    ?hash_algorithm ?hash_value ?id ?tags ?timeouts
    ~automation_account_name ~content_uri ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_automation_python3_package" in
  let __resource =
    {
      automation_account_name;
      content_uri;
      content_version;
      hash_algorithm;
      hash_value;
      id;
      name;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_python3_package __resource);
  ()

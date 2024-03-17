(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_python3_package__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_python3_package__timeouts *)

type azurerm_automation_python3_package = {
  automation_account_name : string prop;
      (** automation_account_name *)
  content_uri : string prop;  (** content_uri *)
  content_version : string prop option; [@option]
      (** content_version *)
  hash_algorithm : string prop option; [@option]
      (** hash_algorithm *)
  hash_value : string prop option; [@option]  (** hash_value *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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

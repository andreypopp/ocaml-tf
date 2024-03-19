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

type azurerm_key_vault_secret = {
  content_type : string prop option; [@option]  (** content_type *)
  expiration_date : string prop option; [@option]
      (** expiration_date *)
  id : string prop option; [@option]  (** id *)
  key_vault_id : string prop;  (** key_vault_id *)
  name : string prop;  (** name *)
  not_before_date : string prop option; [@option]
      (** not_before_date *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  value : string prop;  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_secret *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_secret ?content_type ?expiration_date ?id
    ?not_before_date ?tags ?timeouts ~key_vault_id ~name ~value () :
    azurerm_key_vault_secret =
  {
    content_type;
    expiration_date;
    id;
    key_vault_id;
    name;
    not_before_date;
    tags;
    value;
    timeouts;
  }

type t = {
  content_type : string prop;
  expiration_date : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  not_before_date : string prop;
  resource_id : string prop;
  resource_versionless_id : string prop;
  tags : (string * string) list prop;
  value : string prop;
  version : string prop;
  versionless_id : string prop;
}

let register ?tf_module ?content_type ?expiration_date ?id
    ?not_before_date ?tags ?timeouts ~key_vault_id ~name ~value
    __resource_id =
  let __resource_type = "azurerm_key_vault_secret" in
  let __resource =
    azurerm_key_vault_secret ?content_type ?expiration_date ?id
      ?not_before_date ?tags ?timeouts ~key_vault_id ~name ~value ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_secret __resource);
  let __resource_attributes =
    ({
       content_type =
         Prop.computed __resource_type __resource_id "content_type";
       expiration_date =
         Prop.computed __resource_type __resource_id
           "expiration_date";
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_id =
         Prop.computed __resource_type __resource_id "key_vault_id";
       name = Prop.computed __resource_type __resource_id "name";
       not_before_date =
         Prop.computed __resource_type __resource_id
           "not_before_date";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       resource_versionless_id =
         Prop.computed __resource_type __resource_id
           "resource_versionless_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       value = Prop.computed __resource_type __resource_id "value";
       version =
         Prop.computed __resource_type __resource_id "version";
       versionless_id =
         Prop.computed __resource_type __resource_id "versionless_id";
     }
      : t)
  in
  __resource_attributes

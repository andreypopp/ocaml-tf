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

type azurerm_key_vault_managed_storage_account_sas_token_definition = {
  id : string prop option; [@option]  (** id *)
  managed_storage_account_id : string prop;
      (** managed_storage_account_id *)
  name : string prop;  (** name *)
  sas_template_uri : string prop;  (** sas_template_uri *)
  sas_type : string prop;  (** sas_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  validity_period : string prop;  (** validity_period *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_storage_account_sas_token_definition *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_managed_storage_account_sas_token_definition
    ?id ?tags ?timeouts ~managed_storage_account_id ~name
    ~sas_template_uri ~sas_type ~validity_period () :
    azurerm_key_vault_managed_storage_account_sas_token_definition =
  {
    id;
    managed_storage_account_id;
    name;
    sas_template_uri;
    sas_type;
    tags;
    validity_period;
    timeouts;
  }

type t = {
  id : string prop;
  managed_storage_account_id : string prop;
  name : string prop;
  sas_template_uri : string prop;
  sas_type : string prop;
  secret_id : string prop;
  tags : (string * string) list prop;
  validity_period : string prop;
}

let register ?tf_module ?id ?tags ?timeouts
    ~managed_storage_account_id ~name ~sas_template_uri ~sas_type
    ~validity_period __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_storage_account_sas_token_definition"
  in
  let __resource =
    azurerm_key_vault_managed_storage_account_sas_token_definition
      ?id ?tags ?timeouts ~managed_storage_account_id ~name
      ~sas_template_uri ~sas_type ~validity_period ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_managed_storage_account_sas_token_definition
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       managed_storage_account_id =
         Prop.computed __resource_type __resource_id
           "managed_storage_account_id";
       name = Prop.computed __resource_type __resource_id "name";
       sas_template_uri =
         Prop.computed __resource_type __resource_id
           "sas_template_uri";
       sas_type =
         Prop.computed __resource_type __resource_id "sas_type";
       secret_id =
         Prop.computed __resource_type __resource_id "secret_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       validity_period =
         Prop.computed __resource_type __resource_id
           "validity_period";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?tags ?timeouts ~managed_storage_account_id ~name
    ~sas_template_uri ~sas_type ~validity_period __id =
  let __type =
    "azurerm_key_vault_managed_storage_account_sas_token_definition"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       managed_storage_account_id =
         Prop.computed __type __id "managed_storage_account_id";
       name = Prop.computed __type __id "name";
       sas_template_uri =
         Prop.computed __type __id "sas_template_uri";
       sas_type = Prop.computed __type __id "sas_type";
       secret_id = Prop.computed __type __id "secret_id";
       tags = Prop.computed __type __id "tags";
       validity_period = Prop.computed __type __id "validity_period";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_managed_storage_account_sas_token_definition
        (azurerm_key_vault_managed_storage_account_sas_token_definition
           ?id ?tags ?timeouts ~managed_storage_account_id ~name
           ~sas_template_uri ~sas_type ~validity_period ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts
    ~managed_storage_account_id ~name ~sas_template_uri ~sas_type
    ~validity_period __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~managed_storage_account_id ~name
      ~sas_template_uri ~sas_type ~validity_period __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

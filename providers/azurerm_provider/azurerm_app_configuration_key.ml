(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_configuration_key__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration_key__timeouts *)

type azurerm_app_configuration_key = {
  configuration_store_id : string prop;
      (** configuration_store_id *)
  content_type : string prop option; [@option]  (** content_type *)
  etag : string prop option; [@option]  (** etag *)
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  label : string prop option; [@option]  (** label *)
  locked : bool prop option; [@option]  (** locked *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
  vault_key_reference : string prop option; [@option]
      (** vault_key_reference *)
  timeouts : azurerm_app_configuration_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_configuration_key *)

type t = {
  configuration_store_id : string prop;
  content_type : string prop;
  etag : string prop;
  id : string prop;
  key : string prop;
  label : string prop;
  locked : bool prop;
  tags : (string * string) list prop;
  type_ : string prop;
  value : string prop;
  vault_key_reference : string prop;
}

let azurerm_app_configuration_key ?content_type ?etag ?id ?label
    ?locked ?tags ?type_ ?value ?vault_key_reference ?timeouts
    ~configuration_store_id ~key __resource_id =
  let __resource_type = "azurerm_app_configuration_key" in
  let __resource =
    ({
       configuration_store_id;
       content_type;
       etag;
       id;
       key;
       label;
       locked;
       tags;
       type_;
       value;
       vault_key_reference;
       timeouts;
     }
      : azurerm_app_configuration_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_configuration_key __resource);
  let __resource_attributes =
    ({
       configuration_store_id =
         Prop.computed __resource_type __resource_id
           "configuration_store_id";
       content_type =
         Prop.computed __resource_type __resource_id "content_type";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
       label = Prop.computed __resource_type __resource_id "label";
       locked = Prop.computed __resource_type __resource_id "locked";
       tags = Prop.computed __resource_type __resource_id "tags";
       type_ = Prop.computed __resource_type __resource_id "type";
       value = Prop.computed __resource_type __resource_id "value";
       vault_key_reference =
         Prop.computed __resource_type __resource_id
           "vault_key_reference";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_key__rotation_policy__automatic = {
  time_after_creation : string prop option; [@option]
      (** time_after_creation *)
  time_before_expiry : string prop option; [@option]
      (** time_before_expiry *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_key__rotation_policy__automatic *)

type azurerm_key_vault_key__rotation_policy = {
  expire_after : string prop option; [@option]  (** expire_after *)
  notify_before_expiry : string prop option; [@option]
      (** notify_before_expiry *)
  automatic : azurerm_key_vault_key__rotation_policy__automatic list;
}
[@@deriving yojson_of]
(** azurerm_key_vault_key__rotation_policy *)

type azurerm_key_vault_key__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_key__timeouts *)

type azurerm_key_vault_key = {
  curve : string prop option; [@option]  (** curve *)
  expiration_date : string prop option; [@option]
      (** expiration_date *)
  id : string prop option; [@option]  (** id *)
  key_opts : string prop list;  (** key_opts *)
  key_size : float prop option; [@option]  (** key_size *)
  key_type : string prop;  (** key_type *)
  key_vault_id : string prop;  (** key_vault_id *)
  name : string prop;  (** name *)
  not_before_date : string prop option; [@option]
      (** not_before_date *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  rotation_policy : azurerm_key_vault_key__rotation_policy list;
  timeouts : azurerm_key_vault_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_key *)

type t = {
  curve : string prop;
  e : string prop;
  expiration_date : string prop;
  id : string prop;
  key_opts : string list prop;
  key_size : float prop;
  key_type : string prop;
  key_vault_id : string prop;
  n : string prop;
  name : string prop;
  not_before_date : string prop;
  public_key_openssh : string prop;
  public_key_pem : string prop;
  resource_id : string prop;
  resource_versionless_id : string prop;
  tags : (string * string) list prop;
  version : string prop;
  versionless_id : string prop;
  x : string prop;
  y : string prop;
}

let azurerm_key_vault_key ?curve ?expiration_date ?id ?key_size
    ?not_before_date ?tags ?timeouts ~key_opts ~key_type
    ~key_vault_id ~name ~rotation_policy __resource_id =
  let __resource_type = "azurerm_key_vault_key" in
  let __resource =
    ({
       curve;
       expiration_date;
       id;
       key_opts;
       key_size;
       key_type;
       key_vault_id;
       name;
       not_before_date;
       tags;
       rotation_policy;
       timeouts;
     }
      : azurerm_key_vault_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_key __resource);
  let __resource_attributes =
    ({
       curve = Prop.computed __resource_type __resource_id "curve";
       e = Prop.computed __resource_type __resource_id "e";
       expiration_date =
         Prop.computed __resource_type __resource_id
           "expiration_date";
       id = Prop.computed __resource_type __resource_id "id";
       key_opts =
         Prop.computed __resource_type __resource_id "key_opts";
       key_size =
         Prop.computed __resource_type __resource_id "key_size";
       key_type =
         Prop.computed __resource_type __resource_id "key_type";
       key_vault_id =
         Prop.computed __resource_type __resource_id "key_vault_id";
       n = Prop.computed __resource_type __resource_id "n";
       name = Prop.computed __resource_type __resource_id "name";
       not_before_date =
         Prop.computed __resource_type __resource_id
           "not_before_date";
       public_key_openssh =
         Prop.computed __resource_type __resource_id
           "public_key_openssh";
       public_key_pem =
         Prop.computed __resource_type __resource_id "public_key_pem";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       resource_versionless_id =
         Prop.computed __resource_type __resource_id
           "resource_versionless_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       version =
         Prop.computed __resource_type __resource_id "version";
       versionless_id =
         Prop.computed __resource_type __resource_id "versionless_id";
       x = Prop.computed __resource_type __resource_id "x";
       y = Prop.computed __resource_type __resource_id "y";
     }
      : t)
  in
  __resource_attributes

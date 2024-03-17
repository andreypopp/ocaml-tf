(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate__timeouts *)

type azurerm_app_service_certificate = {
  app_service_plan_id : string prop option; [@option]
      (** app_service_plan_id *)
  id : string prop option; [@option]  (** id *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  key_vault_secret_id : string prop option; [@option]
      (** key_vault_secret_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
  pfx_blob : string prop option; [@option]  (** pfx_blob *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_app_service_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate *)

type t = {
  app_service_plan_id : string prop;
  expiration_date : string prop;
  friendly_name : string prop;
  host_names : string list prop;
  hosting_environment_profile_id : string prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  key_vault_id : string prop;
  key_vault_secret_id : string prop;
  location : string prop;
  name : string prop;
  password : string prop;
  pfx_blob : string prop;
  resource_group_name : string prop;
  subject_name : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
}

let azurerm_app_service_certificate ?app_service_plan_id ?id
    ?key_vault_id ?key_vault_secret_id ?password ?pfx_blob ?tags
    ?timeouts ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_app_service_certificate" in
  let __resource =
    ({
       app_service_plan_id;
       id;
       key_vault_id;
       key_vault_secret_id;
       location;
       name;
       password;
       pfx_blob;
       resource_group_name;
       tags;
       timeouts;
     }
      : azurerm_app_service_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_certificate __resource);
  let __resource_attributes =
    ({
       app_service_plan_id =
         Prop.computed __resource_type __resource_id
           "app_service_plan_id";
       expiration_date =
         Prop.computed __resource_type __resource_id
           "expiration_date";
       friendly_name =
         Prop.computed __resource_type __resource_id "friendly_name";
       host_names =
         Prop.computed __resource_type __resource_id "host_names";
       hosting_environment_profile_id =
         Prop.computed __resource_type __resource_id
           "hosting_environment_profile_id";
       id = Prop.computed __resource_type __resource_id "id";
       issue_date =
         Prop.computed __resource_type __resource_id "issue_date";
       issuer = Prop.computed __resource_type __resource_id "issuer";
       key_vault_id =
         Prop.computed __resource_type __resource_id "key_vault_id";
       key_vault_secret_id =
         Prop.computed __resource_type __resource_id
           "key_vault_secret_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       pfx_blob =
         Prop.computed __resource_type __resource_id "pfx_blob";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       subject_name =
         Prop.computed __resource_type __resource_id "subject_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       thumbprint =
         Prop.computed __resource_type __resource_id "thumbprint";
     }
      : t)
  in
  __resource_attributes

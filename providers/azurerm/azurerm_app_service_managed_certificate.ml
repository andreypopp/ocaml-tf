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

type azurerm_app_service_managed_certificate = {
  custom_hostname_binding_id : string prop;
      (** custom_hostname_binding_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_managed_certificate *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_managed_certificate ?id ?tags ?timeouts
    ~custom_hostname_binding_id () :
    azurerm_app_service_managed_certificate =
  { custom_hostname_binding_id; id; tags; timeouts }

type t = {
  canonical_name : string prop;
  custom_hostname_binding_id : string prop;
  expiration_date : string prop;
  friendly_name : string prop;
  host_names : string list prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  subject_name : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
}

let register ?tf_module ?id ?tags ?timeouts
    ~custom_hostname_binding_id __resource_id =
  let __resource_type = "azurerm_app_service_managed_certificate" in
  let __resource =
    azurerm_app_service_managed_certificate ?id ?tags ?timeouts
      ~custom_hostname_binding_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_managed_certificate __resource);
  let __resource_attributes =
    ({
       canonical_name =
         Prop.computed __resource_type __resource_id "canonical_name";
       custom_hostname_binding_id =
         Prop.computed __resource_type __resource_id
           "custom_hostname_binding_id";
       expiration_date =
         Prop.computed __resource_type __resource_id
           "expiration_date";
       friendly_name =
         Prop.computed __resource_type __resource_id "friendly_name";
       host_names =
         Prop.computed __resource_type __resource_id "host_names";
       id = Prop.computed __resource_type __resource_id "id";
       issue_date =
         Prop.computed __resource_type __resource_id "issue_date";
       issuer = Prop.computed __resource_type __resource_id "issuer";
       subject_name =
         Prop.computed __resource_type __resource_id "subject_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       thumbprint =
         Prop.computed __resource_type __resource_id "thumbprint";
     }
      : t)
  in
  __resource_attributes

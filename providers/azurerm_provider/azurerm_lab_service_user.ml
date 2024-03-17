(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lab_service_user__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_user__timeouts *)

type azurerm_lab_service_user = {
  additional_usage_quota : string prop option; [@option]
      (** additional_usage_quota *)
  email : string prop;  (** email *)
  id : string prop option; [@option]  (** id *)
  lab_id : string prop;  (** lab_id *)
  name : string prop;  (** name *)
  timeouts : azurerm_lab_service_user__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lab_service_user *)

type t = {
  additional_usage_quota : string prop;
  email : string prop;
  id : string prop;
  lab_id : string prop;
  name : string prop;
}

let azurerm_lab_service_user ?additional_usage_quota ?id ?timeouts
    ~email ~lab_id ~name __resource_id =
  let __resource_type = "azurerm_lab_service_user" in
  let __resource =
    ({ additional_usage_quota; email; id; lab_id; name; timeouts }
      : azurerm_lab_service_user)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lab_service_user __resource);
  let __resource_attributes =
    ({
       additional_usage_quota =
         Prop.computed __resource_type __resource_id
           "additional_usage_quota";
       email = Prop.computed __resource_type __resource_id "email";
       id = Prop.computed __resource_type __resource_id "id";
       lab_id = Prop.computed __resource_type __resource_id "lab_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_customized_accelerator__git_repository__basic_auth = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_customized_accelerator__git_repository__basic_auth *)

type azurerm_spring_cloud_customized_accelerator__git_repository__ssh_auth = {
  host_key : string prop option; [@option]  (** host_key *)
  host_key_algorithm : string prop option; [@option]
      (** host_key_algorithm *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_customized_accelerator__git_repository__ssh_auth *)

type azurerm_spring_cloud_customized_accelerator__git_repository = {
  branch : string prop option; [@option]  (** branch *)
  ca_certificate_id : string prop option; [@option]
      (** ca_certificate_id *)
  commit : string prop option; [@option]  (** commit *)
  git_tag : string prop option; [@option]  (** git_tag *)
  interval_in_seconds : float prop option; [@option]
      (** interval_in_seconds *)
  path : string prop option; [@option]  (** path *)
  url : string prop;  (** url *)
  basic_auth :
    azurerm_spring_cloud_customized_accelerator__git_repository__basic_auth
    list;
  ssh_auth :
    azurerm_spring_cloud_customized_accelerator__git_repository__ssh_auth
    list;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_customized_accelerator__git_repository *)

type azurerm_spring_cloud_customized_accelerator__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_customized_accelerator__timeouts *)

type azurerm_spring_cloud_customized_accelerator = {
  accelerator_tags : string prop list option; [@option]
      (** accelerator_tags *)
  accelerator_type : string prop option; [@option]
      (** accelerator_type *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  icon_url : string prop option; [@option]  (** icon_url *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_accelerator_id : string prop;
      (** spring_cloud_accelerator_id *)
  git_repository :
    azurerm_spring_cloud_customized_accelerator__git_repository list;
  timeouts :
    azurerm_spring_cloud_customized_accelerator__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_customized_accelerator *)

let azurerm_spring_cloud_customized_accelerator ?accelerator_tags
    ?accelerator_type ?description ?display_name ?icon_url ?id
    ?timeouts ~name ~spring_cloud_accelerator_id ~git_repository
    __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_customized_accelerator"
  in
  let __resource =
    {
      accelerator_tags;
      accelerator_type;
      description;
      display_name;
      icon_url;
      id;
      name;
      spring_cloud_accelerator_id;
      git_repository;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_customized_accelerator __resource);
  ()

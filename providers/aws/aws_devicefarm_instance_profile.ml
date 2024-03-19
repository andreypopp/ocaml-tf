(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_devicefarm_instance_profile = {
  description : string prop option; [@option]  (** description *)
  exclude_app_packages_from_cleanup : string prop list option;
      [@option]
      (** exclude_app_packages_from_cleanup *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  package_cleanup : bool prop option; [@option]
      (** package_cleanup *)
  reboot_after_use : bool prop option; [@option]
      (** reboot_after_use *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_devicefarm_instance_profile *)

let aws_devicefarm_instance_profile ?description
    ?exclude_app_packages_from_cleanup ?id ?package_cleanup
    ?reboot_after_use ?tags ?tags_all ~name () :
    aws_devicefarm_instance_profile =
  {
    description;
    exclude_app_packages_from_cleanup;
    id;
    name;
    package_cleanup;
    reboot_after_use;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  description : string prop;
  exclude_app_packages_from_cleanup : string list prop;
  id : string prop;
  name : string prop;
  package_cleanup : bool prop;
  reboot_after_use : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description
    ?exclude_app_packages_from_cleanup ?id ?package_cleanup
    ?reboot_after_use ?tags ?tags_all ~name __resource_id =
  let __resource_type = "aws_devicefarm_instance_profile" in
  let __resource =
    aws_devicefarm_instance_profile ?description
      ?exclude_app_packages_from_cleanup ?id ?package_cleanup
      ?reboot_after_use ?tags ?tags_all ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_instance_profile __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       exclude_app_packages_from_cleanup =
         Prop.computed __resource_type __resource_id
           "exclude_app_packages_from_cleanup";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       package_cleanup =
         Prop.computed __resource_type __resource_id
           "package_cleanup";
       reboot_after_use =
         Prop.computed __resource_type __resource_id
           "reboot_after_use";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

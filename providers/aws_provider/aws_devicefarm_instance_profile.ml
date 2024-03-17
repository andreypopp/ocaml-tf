(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_devicefarm_instance_profile = {
  description : string option; [@option]  (** description *)
  exclude_app_packages_from_cleanup : string list option; [@option]
      (** exclude_app_packages_from_cleanup *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  package_cleanup : bool option; [@option]  (** package_cleanup *)
  reboot_after_use : bool option; [@option]  (** reboot_after_use *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_devicefarm_instance_profile *)

let aws_devicefarm_instance_profile ?description
    ?exclude_app_packages_from_cleanup ?id ?package_cleanup
    ?reboot_after_use ?tags ?tags_all ~name __resource_id =
  let __resource_type = "aws_devicefarm_instance_profile" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_instance_profile __resource);
  ()

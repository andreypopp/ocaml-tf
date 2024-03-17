(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_devicefarm_instance_profile = {
  description : string option; [@option]  (** description *)
  exclude_app_packages_from_cleanup : string list option; [@option]
      (** exclude_app_packages_from_cleanup *)
  name : string;  (** name *)
  package_cleanup : bool option; [@option]  (** package_cleanup *)
  reboot_after_use : bool option; [@option]  (** reboot_after_use *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_devicefarm_instance_profile *)

let aws_devicefarm_instance_profile ?description
    ?exclude_app_packages_from_cleanup ?package_cleanup
    ?reboot_after_use ?tags ~name __resource_id =
  let __resource_type = "aws_devicefarm_instance_profile" in
  let __resource =
    {
      description;
      exclude_app_packages_from_cleanup;
      name;
      package_cleanup;
      reboot_after_use;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_instance_profile __resource);
  ()

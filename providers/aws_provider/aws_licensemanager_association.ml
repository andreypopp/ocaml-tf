(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_licensemanager_association = {
  license_configuration_arn : string;
      (** license_configuration_arn *)
  resource_arn : string;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_licensemanager_association *)

let aws_licensemanager_association ~license_configuration_arn
    ~resource_arn __resource_id =
  let __resource_type = "aws_licensemanager_association" in
  let __resource = { license_configuration_arn; resource_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_licensemanager_association __resource);
  ()

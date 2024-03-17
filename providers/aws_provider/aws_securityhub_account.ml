(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_account = {
  auto_enable_controls : bool option; [@option]
      (** auto_enable_controls *)
  enable_default_standards : bool option; [@option]
      (** enable_default_standards *)
}
[@@deriving yojson_of]
(** aws_securityhub_account *)

let aws_securityhub_account ?auto_enable_controls
    ?enable_default_standards __resource_id =
  let __resource_type = "aws_securityhub_account" in
  let __resource =
    { auto_enable_controls; enable_default_standards }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_account __resource);
  ()

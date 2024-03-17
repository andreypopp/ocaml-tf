(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_apprunner_auto_scaling_configuration_version = {
  auto_scaling_configuration_name : string;
      (** auto_scaling_configuration_name *)
  max_concurrency : float option; [@option]  (** max_concurrency *)
  max_size : float option; [@option]  (** max_size *)
  min_size : float option; [@option]  (** min_size *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_apprunner_auto_scaling_configuration_version *)

let aws_apprunner_auto_scaling_configuration_version ?max_concurrency
    ?max_size ?min_size ?tags ~auto_scaling_configuration_name
    __resource_id =
  let __resource_type =
    "aws_apprunner_auto_scaling_configuration_version"
  in
  let __resource =
    {
      auto_scaling_configuration_name;
      max_concurrency;
      max_size;
      min_size;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_auto_scaling_configuration_version
       __resource);
  ()

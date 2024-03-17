(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apprunner_auto_scaling_configuration_version = {
  auto_scaling_configuration_name : string prop;
      (** auto_scaling_configuration_name *)
  id : string prop option; [@option]  (** id *)
  max_concurrency : float prop option; [@option]
      (** max_concurrency *)
  max_size : float prop option; [@option]  (** max_size *)
  min_size : float prop option; [@option]  (** min_size *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_apprunner_auto_scaling_configuration_version *)

let aws_apprunner_auto_scaling_configuration_version ?id
    ?max_concurrency ?max_size ?min_size ?tags ?tags_all
    ~auto_scaling_configuration_name __resource_id =
  let __resource_type =
    "aws_apprunner_auto_scaling_configuration_version"
  in
  let __resource =
    {
      auto_scaling_configuration_name;
      id;
      max_concurrency;
      max_size;
      min_size;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_auto_scaling_configuration_version
       __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_apprunner_observability_configuration__trace_configuration = {
  vendor : string option; [@option]  (** vendor *)
}
[@@deriving yojson_of]
(** aws_apprunner_observability_configuration__trace_configuration *)

type aws_apprunner_observability_configuration = {
  observability_configuration_name : string;
      (** observability_configuration_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  trace_configuration :
    aws_apprunner_observability_configuration__trace_configuration
    list;
}
[@@deriving yojson_of]
(** aws_apprunner_observability_configuration *)

let aws_apprunner_observability_configuration ?tags
    ~observability_configuration_name ~trace_configuration
    __resource_id =
  let __resource_type =
    "aws_apprunner_observability_configuration"
  in
  let __resource =
    { observability_configuration_name; tags; trace_configuration }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_observability_configuration __resource);
  ()

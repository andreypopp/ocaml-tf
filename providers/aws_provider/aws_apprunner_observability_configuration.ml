(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apprunner_observability_configuration__trace_configuration = {
  vendor : string prop option; [@option]  (** vendor *)
}
[@@deriving yojson_of]
(** aws_apprunner_observability_configuration__trace_configuration *)

type aws_apprunner_observability_configuration = {
  id : string prop option; [@option]  (** id *)
  observability_configuration_name : string prop;
      (** observability_configuration_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  trace_configuration :
    aws_apprunner_observability_configuration__trace_configuration
    list;
}
[@@deriving yojson_of]
(** aws_apprunner_observability_configuration *)

let aws_apprunner_observability_configuration ?id ?tags ?tags_all
    ~observability_configuration_name ~trace_configuration
    __resource_id =
  let __resource_type =
    "aws_apprunner_observability_configuration"
  in
  let __resource =
    {
      id;
      observability_configuration_name;
      tags;
      tags_all;
      trace_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_observability_configuration __resource);
  ()

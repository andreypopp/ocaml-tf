(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type trace_configuration = {
  vendor : string prop option; [@option]  (** vendor *)
}
[@@deriving yojson_of]
(** trace_configuration *)

type aws_apprunner_observability_configuration = {
  id : string prop option; [@option]  (** id *)
  observability_configuration_name : string prop;
      (** observability_configuration_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  trace_configuration : trace_configuration list;
}
[@@deriving yojson_of]
(** aws_apprunner_observability_configuration *)

let trace_configuration ?vendor () : trace_configuration = { vendor }

let aws_apprunner_observability_configuration ?id ?tags ?tags_all
    ~observability_configuration_name ~trace_configuration () :
    aws_apprunner_observability_configuration =
  {
    id;
    observability_configuration_name;
    tags;
    tags_all;
    trace_configuration;
  }

type t = {
  arn : string prop;
  id : string prop;
  latest : bool prop;
  observability_configuration_name : string prop;
  observability_configuration_revision : float prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all
    ~observability_configuration_name ~trace_configuration
    __resource_id =
  let __resource_type =
    "aws_apprunner_observability_configuration"
  in
  let __resource =
    aws_apprunner_observability_configuration ?id ?tags ?tags_all
      ~observability_configuration_name ~trace_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_observability_configuration __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       latest = Prop.computed __resource_type __resource_id "latest";
       observability_configuration_name =
         Prop.computed __resource_type __resource_id
           "observability_configuration_name";
       observability_configuration_revision =
         Prop.computed __resource_type __resource_id
           "observability_configuration_revision";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

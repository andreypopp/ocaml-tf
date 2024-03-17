(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appintegrations_data_integration__schedule_config = {
  first_execution_from : string prop;  (** first_execution_from *)
  object_ : string prop; [@key "object"]  (** object *)
  schedule_expression : string prop;  (** schedule_expression *)
}
[@@deriving yojson_of]
(** aws_appintegrations_data_integration__schedule_config *)

type aws_appintegrations_data_integration = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key : string prop;  (** kms_key *)
  name : string prop;  (** name *)
  source_uri : string prop;  (** source_uri *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  schedule_config :
    aws_appintegrations_data_integration__schedule_config list;
}
[@@deriving yojson_of]
(** aws_appintegrations_data_integration *)

let aws_appintegrations_data_integration ?description ?id ?tags
    ?tags_all ~kms_key ~name ~source_uri ~schedule_config
    __resource_id =
  let __resource_type = "aws_appintegrations_data_integration" in
  let __resource =
    {
      description;
      id;
      kms_key;
      name;
      source_uri;
      tags;
      tags_all;
      schedule_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appintegrations_data_integration __resource);
  ()

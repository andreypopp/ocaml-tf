(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_appintegrations_data_integration__schedule_config = {
  first_execution_from : string;  (** first_execution_from *)
  object_ : string; [@key "object"]  (** object *)
  schedule_expression : string;  (** schedule_expression *)
}
[@@deriving yojson_of]
(** aws_appintegrations_data_integration__schedule_config *)

type aws_appintegrations_data_integration = {
  description : string option; [@option]  (** description *)
  kms_key : string;  (** kms_key *)
  name : string;  (** name *)
  source_uri : string;  (** source_uri *)
  tags : (string * string) list option; [@option]  (** tags *)
  schedule_config :
    aws_appintegrations_data_integration__schedule_config list;
}
[@@deriving yojson_of]
(** aws_appintegrations_data_integration *)

let aws_appintegrations_data_integration ?description ?tags ~kms_key
    ~name ~source_uri ~schedule_config __resource_id =
  let __resource_type = "aws_appintegrations_data_integration" in
  let __resource =
    { description; kms_key; name; source_uri; tags; schedule_config }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appintegrations_data_integration __resource);
  ()

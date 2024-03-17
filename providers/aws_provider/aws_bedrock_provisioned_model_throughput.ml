(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_bedrock_provisioned_model_throughput__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_bedrock_provisioned_model_throughput__timeouts *)

type aws_bedrock_provisioned_model_throughput = {
  commitment_duration : string option; [@option]
      (** commitment_duration *)
  model_arn : string;  (** model_arn *)
  model_units : float;  (** model_units *)
  provisioned_model_name : string;  (** provisioned_model_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts :
    aws_bedrock_provisioned_model_throughput__timeouts option;
}
[@@deriving yojson_of]
(** aws_bedrock_provisioned_model_throughput *)

let aws_bedrock_provisioned_model_throughput ?commitment_duration
    ?tags ?timeouts ~model_arn ~model_units ~provisioned_model_name
    __resource_id =
  let __resource_type = "aws_bedrock_provisioned_model_throughput" in
  let __resource =
    {
      commitment_duration;
      model_arn;
      model_units;
      provisioned_model_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_bedrock_provisioned_model_throughput __resource);
  ()

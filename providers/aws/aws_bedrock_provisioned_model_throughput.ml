(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_bedrock_provisioned_model_throughput = {
  commitment_duration : string prop option; [@option]
      (** commitment_duration *)
  model_arn : string prop;  (** model_arn *)
  model_units : float prop;  (** model_units *)
  provisioned_model_name : string prop;
      (** provisioned_model_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_bedrock_provisioned_model_throughput *)

let timeouts ?create () : timeouts = { create }

let aws_bedrock_provisioned_model_throughput ?commitment_duration
    ?tags ?timeouts ~model_arn ~model_units ~provisioned_model_name
    () : aws_bedrock_provisioned_model_throughput =
  {
    commitment_duration;
    model_arn;
    model_units;
    provisioned_model_name;
    tags;
    timeouts;
  }

type t = {
  commitment_duration : string prop;
  id : string prop;
  model_arn : string prop;
  model_units : float prop;
  provisioned_model_arn : string prop;
  provisioned_model_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?commitment_duration ?tags ?timeouts
    ~model_arn ~model_units ~provisioned_model_name __resource_id =
  let __resource_type = "aws_bedrock_provisioned_model_throughput" in
  let __resource =
    aws_bedrock_provisioned_model_throughput ?commitment_duration
      ?tags ?timeouts ~model_arn ~model_units ~provisioned_model_name
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_bedrock_provisioned_model_throughput __resource);
  let __resource_attributes =
    ({
       commitment_duration =
         Prop.computed __resource_type __resource_id
           "commitment_duration";
       id = Prop.computed __resource_type __resource_id "id";
       model_arn =
         Prop.computed __resource_type __resource_id "model_arn";
       model_units =
         Prop.computed __resource_type __resource_id "model_units";
       provisioned_model_arn =
         Prop.computed __resource_type __resource_id
           "provisioned_model_arn";
       provisioned_model_name =
         Prop.computed __resource_type __resource_id
           "provisioned_model_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

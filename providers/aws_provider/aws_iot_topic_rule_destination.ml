(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iot_topic_rule_destination__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule_destination__timeouts *)

type aws_iot_topic_rule_destination__vpc_configuration = {
  role_arn : string;  (** role_arn *)
  security_groups : string list option; [@option]
      (** security_groups *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule_destination__vpc_configuration *)

type aws_iot_topic_rule_destination = {
  enabled : bool option; [@option]  (** enabled *)
  timeouts : aws_iot_topic_rule_destination__timeouts option;
  vpc_configuration :
    aws_iot_topic_rule_destination__vpc_configuration list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule_destination *)

let aws_iot_topic_rule_destination ?enabled ?timeouts
    ~vpc_configuration __resource_id =
  let __resource_type = "aws_iot_topic_rule_destination" in
  let __resource = { enabled; timeouts; vpc_configuration } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_topic_rule_destination __resource);
  ()

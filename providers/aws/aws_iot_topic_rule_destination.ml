(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_configuration = {
  role_arn : string prop;  (** role_arn *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** vpc_configuration *)

type aws_iot_topic_rule_destination = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
  vpc_configuration : vpc_configuration list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule_destination *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_configuration ?security_groups ~role_arn ~subnet_ids ~vpc_id
    () : vpc_configuration =
  { role_arn; security_groups; subnet_ids; vpc_id }

let aws_iot_topic_rule_destination ?enabled ?id ?timeouts
    ~vpc_configuration () : aws_iot_topic_rule_destination =
  { enabled; id; timeouts; vpc_configuration }

type t = { arn : string prop; enabled : bool prop; id : string prop }

let register ?tf_module ?enabled ?id ?timeouts ~vpc_configuration
    __resource_id =
  let __resource_type = "aws_iot_topic_rule_destination" in
  let __resource =
    aws_iot_topic_rule_destination ?enabled ?id ?timeouts
      ~vpc_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_topic_rule_destination __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes

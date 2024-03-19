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

type aws_dynamodb_table_replica = {
  global_table_arn : string prop;  (** global_table_arn *)
  id : string prop option; [@option]  (** id *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  point_in_time_recovery : bool prop option; [@option]
      (** point_in_time_recovery *)
  table_class_override : string prop option; [@option]
      (** table_class_override *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dynamodb_table_replica *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dynamodb_table_replica ?id ?kms_key_arn
    ?point_in_time_recovery ?table_class_override ?tags ?tags_all
    ?timeouts ~global_table_arn () : aws_dynamodb_table_replica =
  {
    global_table_arn;
    id;
    kms_key_arn;
    point_in_time_recovery;
    table_class_override;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  global_table_arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  point_in_time_recovery : bool prop;
  table_class_override : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?kms_key_arn ?point_in_time_recovery
    ?table_class_override ?tags ?tags_all ?timeouts ~global_table_arn
    __resource_id =
  let __resource_type = "aws_dynamodb_table_replica" in
  let __resource =
    aws_dynamodb_table_replica ?id ?kms_key_arn
      ?point_in_time_recovery ?table_class_override ?tags ?tags_all
      ?timeouts ~global_table_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_table_replica __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       global_table_arn =
         Prop.computed __resource_type __resource_id
           "global_table_arn";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_arn =
         Prop.computed __resource_type __resource_id "kms_key_arn";
       point_in_time_recovery =
         Prop.computed __resource_type __resource_id
           "point_in_time_recovery";
       table_class_override =
         Prop.computed __resource_type __resource_id
           "table_class_override";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

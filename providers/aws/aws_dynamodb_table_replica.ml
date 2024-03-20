(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?kms_key_arn ?point_in_time_recovery
    ?table_class_override ?tags ?tags_all ?timeouts ~global_table_arn
    __id =
  let __type = "aws_dynamodb_table_replica" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       global_table_arn =
         Prop.computed __type __id "global_table_arn";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       point_in_time_recovery =
         Prop.computed __type __id "point_in_time_recovery";
       table_class_override =
         Prop.computed __type __id "table_class_override";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_table_replica
        (aws_dynamodb_table_replica ?id ?kms_key_arn
           ?point_in_time_recovery ?table_class_override ?tags
           ?tags_all ?timeouts ~global_table_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_arn ?point_in_time_recovery
    ?table_class_override ?tags ?tags_all ?timeouts ~global_table_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_arn ?point_in_time_recovery
      ?table_class_override ?tags ?tags_all ?timeouts
      ~global_table_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

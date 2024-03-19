(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dms_replication_subnet_group = {
  id : string prop option; [@option]  (** id *)
  replication_subnet_group_description : string prop;
      (** replication_subnet_group_description *)
  replication_subnet_group_id : string prop;
      (** replication_subnet_group_id *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dms_replication_subnet_group *)

let aws_dms_replication_subnet_group ?id ?tags ?tags_all
    ~replication_subnet_group_description
    ~replication_subnet_group_id ~subnet_ids () :
    aws_dms_replication_subnet_group =
  {
    id;
    replication_subnet_group_description;
    replication_subnet_group_id;
    subnet_ids;
    tags;
    tags_all;
  }

type t = {
  id : string prop;
  replication_subnet_group_arn : string prop;
  replication_subnet_group_description : string prop;
  replication_subnet_group_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let register ?tf_module ?id ?tags ?tags_all
    ~replication_subnet_group_description
    ~replication_subnet_group_id ~subnet_ids __resource_id =
  let __resource_type = "aws_dms_replication_subnet_group" in
  let __resource =
    aws_dms_replication_subnet_group ?id ?tags ?tags_all
      ~replication_subnet_group_description
      ~replication_subnet_group_id ~subnet_ids ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_replication_subnet_group __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       replication_subnet_group_arn =
         Prop.computed __resource_type __resource_id
           "replication_subnet_group_arn";
       replication_subnet_group_description =
         Prop.computed __resource_type __resource_id
           "replication_subnet_group_description";
       replication_subnet_group_id =
         Prop.computed __resource_type __resource_id
           "replication_subnet_group_id";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cleanrooms_collaboration__data_encryption_metadata = {
  allow_clear_text : bool prop;  (** allow_clear_text *)
  allow_duplicates : bool prop;  (** allow_duplicates *)
  allow_joins_on_columns_with_different_names : bool prop;
      (** allow_joins_on_columns_with_different_names *)
  preserve_nulls : bool prop;  (** preserve_nulls *)
}
[@@deriving yojson_of]
(** aws_cleanrooms_collaboration__data_encryption_metadata *)

type aws_cleanrooms_collaboration__member = {
  account_id : string prop;  (** account_id *)
  display_name : string prop;  (** display_name *)
  member_abilities : string prop list;  (** member_abilities *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** aws_cleanrooms_collaboration__member *)

type aws_cleanrooms_collaboration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cleanrooms_collaboration__timeouts *)

type aws_cleanrooms_collaboration = {
  creator_display_name : string prop;  (** creator_display_name *)
  creator_member_abilities : string prop list;
      (** creator_member_abilities *)
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  query_log_status : string prop;  (** query_log_status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  data_encryption_metadata :
    aws_cleanrooms_collaboration__data_encryption_metadata list;
  member : aws_cleanrooms_collaboration__member list;
  timeouts : aws_cleanrooms_collaboration__timeouts option;
}
[@@deriving yojson_of]
(** aws_cleanrooms_collaboration *)

type t = {
  arn : string prop;
  create_time : string prop;
  creator_display_name : string prop;
  creator_member_abilities : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  query_log_status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

let aws_cleanrooms_collaboration ?tags ?tags_all ?timeouts
    ~creator_display_name ~creator_member_abilities ~description
    ~name ~query_log_status ~data_encryption_metadata ~member
    __resource_id =
  let __resource_type = "aws_cleanrooms_collaboration" in
  let __resource =
    ({
       creator_display_name;
       creator_member_abilities;
       description;
       name;
       query_log_status;
       tags;
       tags_all;
       data_encryption_metadata;
       member;
       timeouts;
     }
      : aws_cleanrooms_collaboration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cleanrooms_collaboration __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       creator_display_name =
         Prop.computed __resource_type __resource_id
           "creator_display_name";
       creator_member_abilities =
         Prop.computed __resource_type __resource_id
           "creator_member_abilities";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       query_log_status =
         Prop.computed __resource_type __resource_id
           "query_log_status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes

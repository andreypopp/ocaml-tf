(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cleanrooms_collaboration__data_encryption_metadata = {
  allow_clear_text : bool;  (** allow_clear_text *)
  allow_duplicates : bool;  (** allow_duplicates *)
  allow_joins_on_columns_with_different_names : bool;
      (** allow_joins_on_columns_with_different_names *)
  preserve_nulls : bool;  (** preserve_nulls *)
}
[@@deriving yojson_of]
(** aws_cleanrooms_collaboration__data_encryption_metadata *)

type aws_cleanrooms_collaboration__member = {
  account_id : string;  (** account_id *)
  display_name : string;  (** display_name *)
  member_abilities : string list;  (** member_abilities *)
  status : string;  (** status *)
}
[@@deriving yojson_of]
(** aws_cleanrooms_collaboration__member *)

type aws_cleanrooms_collaboration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cleanrooms_collaboration__timeouts *)

type aws_cleanrooms_collaboration = {
  creator_display_name : string;  (** creator_display_name *)
  creator_member_abilities : string list;
      (** creator_member_abilities *)
  description : string;  (** description *)
  name : string;  (** name *)
  query_log_status : string;  (** query_log_status *)
  tags : (string * string) list option; [@option]  (** tags *)
  data_encryption_metadata :
    aws_cleanrooms_collaboration__data_encryption_metadata list;
  member : aws_cleanrooms_collaboration__member list;
  timeouts : aws_cleanrooms_collaboration__timeouts option;
}
[@@deriving yojson_of]
(** aws_cleanrooms_collaboration *)

let aws_cleanrooms_collaboration ?tags ?timeouts
    ~creator_display_name ~creator_member_abilities ~description
    ~name ~query_log_status ~data_encryption_metadata ~member
    __resource_id =
  let __resource_type = "aws_cleanrooms_collaboration" in
  let __resource =
    {
      creator_display_name;
      creator_member_abilities;
      description;
      name;
      query_log_status;
      tags;
      data_encryption_metadata;
      member;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cleanrooms_collaboration __resource);
  ()

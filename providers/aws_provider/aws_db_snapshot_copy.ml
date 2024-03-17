(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_snapshot_copy__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_db_snapshot_copy__timeouts *)

type aws_db_snapshot_copy = {
  copy_tags : bool option; [@option]  (** copy_tags *)
  destination_region : string option; [@option]
      (** destination_region *)
  id : string option; [@option]  (** id *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  option_group_name : string option; [@option]
      (** option_group_name *)
  presigned_url : string option; [@option]  (** presigned_url *)
  source_db_snapshot_identifier : string;
      (** source_db_snapshot_identifier *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  target_custom_availability_zone : string option; [@option]
      (** target_custom_availability_zone *)
  target_db_snapshot_identifier : string;
      (** target_db_snapshot_identifier *)
  timeouts : aws_db_snapshot_copy__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_snapshot_copy *)

let aws_db_snapshot_copy ?copy_tags ?destination_region ?id
    ?kms_key_id ?option_group_name ?presigned_url ?tags ?tags_all
    ?target_custom_availability_zone ?timeouts
    ~source_db_snapshot_identifier ~target_db_snapshot_identifier
    __resource_id =
  let __resource_type = "aws_db_snapshot_copy" in
  let __resource =
    {
      copy_tags;
      destination_region;
      id;
      kms_key_id;
      option_group_name;
      presigned_url;
      source_db_snapshot_identifier;
      tags;
      tags_all;
      target_custom_availability_zone;
      target_db_snapshot_identifier;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_snapshot_copy __resource);
  ()

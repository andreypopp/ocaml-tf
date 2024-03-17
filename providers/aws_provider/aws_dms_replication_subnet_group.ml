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
    ~replication_subnet_group_id ~subnet_ids __resource_id =
  let __resource_type = "aws_dms_replication_subnet_group" in
  let __resource =
    {
      id;
      replication_subnet_group_description;
      replication_subnet_group_id;
      subnet_ids;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_replication_subnet_group __resource);
  ()

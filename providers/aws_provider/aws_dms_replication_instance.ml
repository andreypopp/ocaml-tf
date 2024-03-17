(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dms_replication_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dms_replication_instance__timeouts *)

type aws_dms_replication_instance = {
  allow_major_version_upgrade : bool option; [@option]
      (** allow_major_version_upgrade *)
  apply_immediately : bool option; [@option]
      (** apply_immediately *)
  replication_instance_class : string;
      (** replication_instance_class *)
  replication_instance_id : string;  (** replication_instance_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_dms_replication_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_dms_replication_instance *)

let aws_dms_replication_instance ?allow_major_version_upgrade
    ?apply_immediately ?tags ?timeouts ~replication_instance_class
    ~replication_instance_id __resource_id =
  let __resource_type = "aws_dms_replication_instance" in
  let __resource =
    {
      allow_major_version_upgrade;
      apply_immediately;
      replication_instance_class;
      replication_instance_id;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_replication_instance __resource);
  ()

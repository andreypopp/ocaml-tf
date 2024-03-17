(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ebs_snapshot_copy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_copy__timeouts *)

type aws_ebs_snapshot_copy = {
  description : string prop option; [@option]  (** description *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  permanent_restore : bool prop option; [@option]
      (** permanent_restore *)
  source_region : string prop;  (** source_region *)
  source_snapshot_id : string prop;  (** source_snapshot_id *)
  storage_tier : string prop option; [@option]  (** storage_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  temporary_restore_days : float prop option; [@option]
      (** temporary_restore_days *)
  timeouts : aws_ebs_snapshot_copy__timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_copy *)

let aws_ebs_snapshot_copy ?description ?encrypted ?id ?kms_key_id
    ?permanent_restore ?storage_tier ?tags ?tags_all
    ?temporary_restore_days ?timeouts ~source_region
    ~source_snapshot_id __resource_id =
  let __resource_type = "aws_ebs_snapshot_copy" in
  let __resource =
    {
      description;
      encrypted;
      id;
      kms_key_id;
      permanent_restore;
      source_region;
      source_snapshot_id;
      storage_tier;
      tags;
      tags_all;
      temporary_restore_days;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_snapshot_copy __resource);
  ()

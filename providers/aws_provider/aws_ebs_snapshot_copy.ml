(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ebs_snapshot_copy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_copy__timeouts *)

type aws_ebs_snapshot_copy = {
  description : string option; [@option]  (** description *)
  encrypted : bool option; [@option]  (** encrypted *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  permanent_restore : bool option; [@option]
      (** permanent_restore *)
  source_region : string;  (** source_region *)
  source_snapshot_id : string;  (** source_snapshot_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  temporary_restore_days : float option; [@option]
      (** temporary_restore_days *)
  timeouts : aws_ebs_snapshot_copy__timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_copy *)

let aws_ebs_snapshot_copy ?description ?encrypted ?kms_key_id
    ?permanent_restore ?tags ?temporary_restore_days ?timeouts
    ~source_region ~source_snapshot_id __resource_id =
  let __resource_type = "aws_ebs_snapshot_copy" in
  let __resource =
    {
      description;
      encrypted;
      kms_key_id;
      permanent_restore;
      source_region;
      source_snapshot_id;
      tags;
      temporary_restore_days;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_snapshot_copy __resource);
  ()
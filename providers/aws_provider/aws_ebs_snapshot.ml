(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ebs_snapshot__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ebs_snapshot__timeouts *)

type aws_ebs_snapshot = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  outpost_arn : string option; [@option]  (** outpost_arn *)
  permanent_restore : bool option; [@option]
      (** permanent_restore *)
  storage_tier : string option; [@option]  (** storage_tier *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  temporary_restore_days : float option; [@option]
      (** temporary_restore_days *)
  volume_id : string;  (** volume_id *)
  timeouts : aws_ebs_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_snapshot *)

let aws_ebs_snapshot ?description ?id ?outpost_arn ?permanent_restore
    ?storage_tier ?tags ?tags_all ?temporary_restore_days ?timeouts
    ~volume_id __resource_id =
  let __resource_type = "aws_ebs_snapshot" in
  let __resource =
    {
      description;
      id;
      outpost_arn;
      permanent_restore;
      storage_tier;
      tags;
      tags_all;
      temporary_restore_days;
      volume_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_snapshot __resource);
  ()

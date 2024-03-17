(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ebs_snapshot__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ebs_snapshot__timeouts *)

type aws_ebs_snapshot = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  outpost_arn : string prop option; [@option]  (** outpost_arn *)
  permanent_restore : bool prop option; [@option]
      (** permanent_restore *)
  storage_tier : string prop option; [@option]  (** storage_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  temporary_restore_days : float prop option; [@option]
      (** temporary_restore_days *)
  volume_id : string prop;  (** volume_id *)
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

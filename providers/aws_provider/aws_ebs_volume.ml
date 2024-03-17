(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ebs_volume__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ebs_volume__timeouts *)

type aws_ebs_volume = {
  availability_zone : string;  (** availability_zone *)
  encrypted : bool option; [@option]  (** encrypted *)
  final_snapshot : bool option; [@option]  (** final_snapshot *)
  id : string option; [@option]  (** id *)
  iops : float option; [@option]  (** iops *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  multi_attach_enabled : bool option; [@option]
      (** multi_attach_enabled *)
  outpost_arn : string option; [@option]  (** outpost_arn *)
  size : float option; [@option]  (** size *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  throughput : float option; [@option]  (** throughput *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  timeouts : aws_ebs_volume__timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_volume *)

let aws_ebs_volume ?encrypted ?final_snapshot ?id ?iops ?kms_key_id
    ?multi_attach_enabled ?outpost_arn ?size ?snapshot_id ?tags
    ?tags_all ?throughput ?type_ ?timeouts ~availability_zone
    __resource_id =
  let __resource_type = "aws_ebs_volume" in
  let __resource =
    {
      availability_zone;
      encrypted;
      final_snapshot;
      id;
      iops;
      kms_key_id;
      multi_attach_enabled;
      outpost_arn;
      size;
      snapshot_id;
      tags;
      tags_all;
      throughput;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_volume __resource);
  ()

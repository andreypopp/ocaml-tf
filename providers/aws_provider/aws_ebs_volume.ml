(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ebs_volume__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ebs_volume__timeouts *)

type aws_ebs_volume = {
  availability_zone : string prop;  (** availability_zone *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  final_snapshot : bool prop option; [@option]  (** final_snapshot *)
  id : string prop option; [@option]  (** id *)
  iops : float prop option; [@option]  (** iops *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  multi_attach_enabled : bool prop option; [@option]
      (** multi_attach_enabled *)
  outpost_arn : string prop option; [@option]  (** outpost_arn *)
  size : float prop option; [@option]  (** size *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  throughput : float prop option; [@option]  (** throughput *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
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

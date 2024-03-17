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
  final_snapshot : bool option; [@option]  (** final_snapshot *)
  multi_attach_enabled : bool option; [@option]
      (** multi_attach_enabled *)
  outpost_arn : string option; [@option]  (** outpost_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_ebs_volume__timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_volume *)

let aws_ebs_volume ?final_snapshot ?multi_attach_enabled ?outpost_arn
    ?tags ?timeouts ~availability_zone __resource_id =
  let __resource_type = "aws_ebs_volume" in
  let __resource =
    {
      availability_zone;
      final_snapshot;
      multi_attach_enabled;
      outpost_arn;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_volume __resource);
  ()

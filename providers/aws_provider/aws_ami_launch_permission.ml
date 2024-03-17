(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ami_launch_permission = {
  account_id : string prop option; [@option]  (** account_id *)
  group : string prop option; [@option]  (** group *)
  id : string prop option; [@option]  (** id *)
  image_id : string prop;  (** image_id *)
  organization_arn : string prop option; [@option]
      (** organization_arn *)
  organizational_unit_arn : string prop option; [@option]
      (** organizational_unit_arn *)
}
[@@deriving yojson_of]
(** aws_ami_launch_permission *)

let aws_ami_launch_permission ?account_id ?group ?id
    ?organization_arn ?organizational_unit_arn ~image_id
    __resource_id =
  let __resource_type = "aws_ami_launch_permission" in
  let __resource =
    {
      account_id;
      group;
      id;
      image_id;
      organization_arn;
      organizational_unit_arn;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ami_launch_permission __resource);
  ()

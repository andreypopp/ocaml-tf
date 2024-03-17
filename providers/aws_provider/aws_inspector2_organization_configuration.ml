(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_inspector2_organization_configuration__auto_enable = {
  ec2 : bool;  (** ec2 *)
  ecr : bool;  (** ecr *)
  lambda : bool option; [@option]  (** lambda *)
  lambda_code : bool option; [@option]  (** lambda_code *)
}
[@@deriving yojson_of]
(** aws_inspector2_organization_configuration__auto_enable *)

type aws_inspector2_organization_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_inspector2_organization_configuration__timeouts *)

type aws_inspector2_organization_configuration = {
  auto_enable :
    aws_inspector2_organization_configuration__auto_enable list;
  timeouts :
    aws_inspector2_organization_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_inspector2_organization_configuration *)

let aws_inspector2_organization_configuration ?timeouts ~auto_enable
    __resource_id =
  let __resource_type =
    "aws_inspector2_organization_configuration"
  in
  let __resource = { auto_enable; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_inspector2_organization_configuration __resource);
  ()

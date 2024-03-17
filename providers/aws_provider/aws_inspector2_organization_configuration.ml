(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_inspector2_organization_configuration__auto_enable = {
  ec2 : bool prop;  (** ec2 *)
  ecr : bool prop;  (** ecr *)
  lambda : bool prop option; [@option]  (** lambda *)
  lambda_code : bool prop option; [@option]  (** lambda_code *)
}
[@@deriving yojson_of]
(** aws_inspector2_organization_configuration__auto_enable *)

type aws_inspector2_organization_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_inspector2_organization_configuration__timeouts *)

type aws_inspector2_organization_configuration = {
  id : string prop option; [@option]  (** id *)
  auto_enable :
    aws_inspector2_organization_configuration__auto_enable list;
  timeouts :
    aws_inspector2_organization_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_inspector2_organization_configuration *)

let aws_inspector2_organization_configuration ?id ?timeouts
    ~auto_enable __resource_id =
  let __resource_type =
    "aws_inspector2_organization_configuration"
  in
  let __resource = { id; auto_enable; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_inspector2_organization_configuration __resource);
  ()

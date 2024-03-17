(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoverycontrolconfig_control_panel = {
  cluster_arn : string;  (** cluster_arn *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_control_panel *)

let aws_route53recoverycontrolconfig_control_panel ?id ~cluster_arn
    ~name __resource_id =
  let __resource_type =
    "aws_route53recoverycontrolconfig_control_panel"
  in
  let __resource = { cluster_arn; id; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoverycontrolconfig_control_panel
       __resource);
  ()

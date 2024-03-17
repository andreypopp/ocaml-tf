(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_dashboard = {
  dashboard_body : string prop;  (** dashboard_body *)
  dashboard_name : string prop;  (** dashboard_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_dashboard *)

let aws_cloudwatch_dashboard ?id ~dashboard_body ~dashboard_name
    __resource_id =
  let __resource_type = "aws_cloudwatch_dashboard" in
  let __resource = { dashboard_body; dashboard_name; id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_dashboard __resource);
  ()

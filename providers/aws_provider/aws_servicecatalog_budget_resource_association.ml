(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_servicecatalog_budget_resource_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_budget_resource_association__timeouts *)

type aws_servicecatalog_budget_resource_association = {
  budget_name : string;  (** budget_name *)
  resource_id : string;  (** resource_id *)
  timeouts :
    aws_servicecatalog_budget_resource_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_budget_resource_association *)

let aws_servicecatalog_budget_resource_association ?timeouts
    ~budget_name ~resource_id __resource_id =
  let __resource_type =
    "aws_servicecatalog_budget_resource_association"
  in
  let __resource = { budget_name; resource_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_budget_resource_association
       __resource);
  ()
(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_budget_resource_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_budget_resource_association__timeouts *)

type aws_servicecatalog_budget_resource_association = {
  budget_name : string prop;  (** budget_name *)
  id : string prop option; [@option]  (** id *)
  resource_id : string prop;  (** resource_id *)
  timeouts :
    aws_servicecatalog_budget_resource_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_budget_resource_association *)

let aws_servicecatalog_budget_resource_association ?id ?timeouts
    ~budget_name ~resource_id __resource_id =
  let __resource_type =
    "aws_servicecatalog_budget_resource_association"
  in
  let __resource = { budget_name; id; resource_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_budget_resource_association
       __resource);
  ()

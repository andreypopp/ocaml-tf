(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_servicecatalog_portfolio__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_portfolio__timeouts *)

type aws_servicecatalog_portfolio = {
  name : string;  (** name *)
  provider_name : string;  (** provider_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_servicecatalog_portfolio__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_portfolio *)

let aws_servicecatalog_portfolio ?tags ?timeouts ~name ~provider_name
    __resource_id =
  let __resource_type = "aws_servicecatalog_portfolio" in
  let __resource = { name; provider_name; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_portfolio __resource);
  ()

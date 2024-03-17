(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_portfolio__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_portfolio__timeouts *)

type aws_servicecatalog_portfolio = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  provider_name : string;  (** provider_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_servicecatalog_portfolio__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_portfolio *)

let aws_servicecatalog_portfolio ?description ?id ?tags ?tags_all
    ?timeouts ~name ~provider_name __resource_id =
  let __resource_type = "aws_servicecatalog_portfolio" in
  let __resource =
    {
      description;
      id;
      name;
      provider_name;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_portfolio __resource);
  ()

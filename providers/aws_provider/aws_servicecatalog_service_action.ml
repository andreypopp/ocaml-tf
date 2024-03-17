(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_servicecatalog_service_action__definition = {
  assume_role : string option; [@option]  (** assume_role *)
  name : string;  (** name *)
  parameters : string option; [@option]  (** parameters *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_service_action__definition *)

type aws_servicecatalog_service_action__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_service_action__timeouts *)

type aws_servicecatalog_service_action = {
  accept_language : string option; [@option]  (** accept_language *)
  name : string;  (** name *)
  definition : aws_servicecatalog_service_action__definition list;
  timeouts : aws_servicecatalog_service_action__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_service_action *)

let aws_servicecatalog_service_action ?accept_language ?timeouts
    ~name ~definition __resource_id =
  let __resource_type = "aws_servicecatalog_service_action" in
  let __resource = { accept_language; name; definition; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_service_action __resource);
  ()

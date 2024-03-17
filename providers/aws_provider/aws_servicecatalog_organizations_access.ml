(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_organizations_access__timeouts = {
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_organizations_access__timeouts *)

type aws_servicecatalog_organizations_access = {
  enabled : bool;  (** enabled *)
  id : string option; [@option]  (** id *)
  timeouts : aws_servicecatalog_organizations_access__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_organizations_access *)

let aws_servicecatalog_organizations_access ?id ?timeouts ~enabled
    __resource_id =
  let __resource_type = "aws_servicecatalog_organizations_access" in
  let __resource = { enabled; id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_organizations_access __resource);
  ()

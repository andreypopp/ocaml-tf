(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_athena_prepared_statement__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_athena_prepared_statement__timeouts *)

type aws_athena_prepared_statement = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  query_statement : string;  (** query_statement *)
  workgroup : string;  (** workgroup *)
  timeouts : aws_athena_prepared_statement__timeouts option;
}
[@@deriving yojson_of]
(** aws_athena_prepared_statement *)

let aws_athena_prepared_statement ?description ?id ?timeouts ~name
    ~query_statement ~workgroup __resource_id =
  let __resource_type = "aws_athena_prepared_statement" in
  let __resource =
    { description; id; name; query_statement; workgroup; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_athena_prepared_statement __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ssoadmin_application_assignment = {
  application_arn : string;  (** application_arn *)
  principal_id : string;  (** principal_id *)
  principal_type : string;  (** principal_type *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_application_assignment *)

let aws_ssoadmin_application_assignment ~application_arn
    ~principal_id ~principal_type __resource_id =
  let __resource_type = "aws_ssoadmin_application_assignment" in
  let __resource =
    { application_arn; principal_id; principal_type }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_application_assignment __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_auditmanager_assessment_report = {
  assessment_id : string;  (** assessment_id *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_auditmanager_assessment_report *)

let aws_auditmanager_assessment_report ?description ~assessment_id
    ~name __resource_id =
  let __resource_type = "aws_auditmanager_assessment_report" in
  let __resource = { assessment_id; description; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_assessment_report __resource);
  ()

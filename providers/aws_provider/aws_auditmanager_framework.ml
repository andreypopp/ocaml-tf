(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_auditmanager_framework__control_sets__controls = {
  id : string;  (** id *)
}
[@@deriving yojson_of]
(** aws_auditmanager_framework__control_sets__controls *)

type aws_auditmanager_framework__control_sets = {
  id : string;  (** id *)
  name : string;  (** name *)
  controls : aws_auditmanager_framework__control_sets__controls list;
}
[@@deriving yojson_of]
(** aws_auditmanager_framework__control_sets *)

type aws_auditmanager_framework = {
  compliance_type : string option; [@option]  (** compliance_type *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  control_sets : aws_auditmanager_framework__control_sets list;
}
[@@deriving yojson_of]
(** aws_auditmanager_framework *)

let aws_auditmanager_framework ?compliance_type ?description ?tags
    ~name ~control_sets __resource_id =
  let __resource_type = "aws_auditmanager_framework" in
  let __resource =
    { compliance_type; description; name; tags; control_sets }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_framework __resource);
  ()
